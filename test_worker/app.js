var express = require('express');
var util   = require('util'),
    exec  = require('child_process').exec,
    child;
var app = express();

var request = require('request');
var jsonfile = require('jsonfile');

var settings;

app.get('/', function (req, res) {
	res.send("hello World");
});

app.get('/test1', function(req, res){
    request({
        url: 'http://10.132.0.2:3000/queryTest', //URL to hit
        qs: {internal_ip : inter_ip}, //Query string data
        method: 'GET'}
    , function (error, response, body) {
        //Check for error
        if(error){
            return console.log('Error:', error);
        }

        //Check for right status code
        if(response.statusCode !== 200){
            return console.log('Invalid Status Code Returned:', response.statusCode);
        }
		res.send(body);
    });
});

app.post('/get_blend', function(req, res){	
	res.send("done");
});

// error handler
app.use(function(err, req, res, next) {
	console.error("Custom error message by me");
	console.error(err.stack);
});

app.listen(3000, function () {
	var child1 = exec('/home/projectcloudbristol/test_worker/internalip',
		function (error, stdout) {
			var ownerIP = stdout.trim();
			request({
				url: 'http://10.132.0.2:3000/machine_ready', //URL to hit
				qs: {internal_ip : ownerIP }, //Query string data
				method: 'GET'}
			, function (err, response, body) {    
				//Check for error
				if(err){
					return console.log('Error:', err);
				}

				//Check for right status code
				if(response.statusCode !== 200){
					return console.log('Invalid Status Code Returned:', response.statusCode);
				}
				
				settings = body;
				
				var child2 = exec(body, {maxBuffer: 1024 * 50000}, 
					function (error2) {				
						
						if (error2)
						{
							request({
								url: 'http://10.132.0.2:3000/worker_error', 
								qs: {errorMessage : error2 }, 
								method: 'GET'}
							);
						}
						
						//request('http://10.132.0.2:3000/render_finished');
						request({
							url: 'http://10.132.0.2:3000/render_finished', 
							qs: {internal_ip : ownerIP }, 
							method: 'GET'}
						);						

						var child3 = exec('sudo gcloud compute instances list --format json',
						function (error1, stdout1, stderr1) {
							data = JSON.parse(stdout1)
							for(var j = 0; j < data.length; j++){
								var internal_ip = data[j].networkInterfaces[0].networkIP;
								if( ownerIP == internal_ip  ) {
									var child4 = exec('sudo gcloud compute instance-groups managed delete-instances instance-group-worker-v5 --instances ' +data[j].name+'  --zone europe-west1-c');
									break;
								}
							}	
						});
					});	
			});	
		});
});
