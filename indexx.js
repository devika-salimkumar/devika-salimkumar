require('dotenv').config();
const express = require('express');
const app = express();
const PORT = 3000;
const db = require('./services/mysql_db');
var bodyParser = require('body-parser')

app.use(express.json());
app.set('views', __dirname + '/views');
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'ejs');
app.use(express.static(__dirname + '/public'));
var jsonParser = bodyParser.json()
var urlencodedParser = bodyParser.urlencoded({ extended: false })

app.get('/search/result', (req,res) => {
    let origin = req.query.origin;
    let destination = req.query.destination;
    let dateofjourney = req.query.dateofjourney;
    let numberofpassengers = req.query.numberofpassengers;

    db.query('select * from flight_details where Orgin="'+origin_place+'" AND Destination="'+destination_place+'" AND Leave_On="'+leave_date+'"', function(err, result, fields){
        if (err)
        {
            throw err;
        }
        else
        {
            var arr = []
            for (var i in result)
            {
                var people = result[i];
                if(people.Seat_Availability>=adults_no){
                    people.adults_no = adults_no;
                    arr.push(people);
                }
            }
            // console.log(arr[0].Seat_Availability);
            res.render('searchresults.html', {flights : arr});
        }
    });
    // res.send('done');
})