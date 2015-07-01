<!DOCTYPE HTML>
<html lang="en">
<head>
		<link href="/static/stylesheets/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="/static/stylesheets/bluemix.css" rel="stylesheet" media="screen">
		<title>IBM Internet of Things</title>
		<meta charset="utf-8">
</head>
<body class="iotDemo">
	<!-- divs to help us track resizing -->
	<div class="device-xs visible-xs"></div>
	<div class="device-sm visible-sm"></div>
	<div class="device-md visible-md"></div>
	<div class="device-lg visible-lg"></div>
	<!-- Welcome Banner & Connect Panel -->
	<div class="white-section grid" id="name-entry-section">
		<div class="flex-title">
		  <div class="medium-large-font center-text flex-item">
		    First...
		  </div>
		</div>

			<div>

				<!-- Left column -->
				<div class="col-sm-12 col-md-6 pad-right">
					<div class="col-sm-1 col-md-1 small-width">
						<div class="numberCircle">1</div>
					</div>
					<div class="col-sm-11 col-md-11">
							<p class="medium-font-bold">
								Generate a URL
							</p>
							<p class="medium-font">
								Give your smartphone a somewhat unique name and a 4-digit code.
								We’ll generate a URL for you to open in your phone’s browser.
							</p>
					</div>
				</div>
				<!-- Right Column -->
				<div class="col-md-6 col-sm-12">
					<div class="use-code-input-row" id="connectPanel">
						<form id="goForm">
							<div class="form-item col-md-8 col-xs-8">
								<input type="text" id="username3" placeholder="DEVICE NAME" required>
							</div>
							<div class="form-item col-md-4 col-xs-4">
								<input type="password" id="pin3" placeholder="4-DIGIT CODE" inputmode="numeric" maxlength="4" required>
							</div>
							<button class="section-button black-button col-md-12 col-sm-12" type="submit">Go play!</button>
						</form>
					</div>
					<p class="medium-font qrlink"><a id="myDeviceLink"></a></p>
					<div class="medium-large-font" id="qrcode"></div>
					<div class="alert" id="goWarning"><span>&nbsp;</span></div>
				</div>

			</div>
	</div>

	<div id="connectedPanel">
		<div class="white-section">
			<hr>
			<div class="col-sm-1 col-md-1 small-width">
				<div class="numberCircle">2</div>
			</div>
			<div class="col-sm-11 col-md-11">
				<p class="medium-font-bold">Watch the magic happen!</p>
				<p class="medium-font">Enter your 4-digit code on your phone and then try moving your phone around.<br />
				<p class="medium-font">See the model and graph below mirroring your movements?</p>
				<p class="medium-font">This is made possible via MQTT messaging, the IoT Foundation, and this cool sample that's hosted on Bluemix!</p>
			</div>

		</div>
		<div class="alert" id="vibrationWarning"><span>Wow! We've detected some serious shaking!</span></div>
		<div id="visualisations">
    		<div class="flex-layout">
				<div id="cube" class="col-md-5 col-sm-12 col-lg-5"></div>
				<div class="col-md-1 col-lg-1 col-sm-1"></div>
				<div class="flex-layout col-md-6 col-sm-12 col-lg-6">
					<div class="col-md-7 col-sm-12 flex-block">
						<p class="medium-font-bold">Vibration</p>
						<div id="magData" class="graphHolder"></div>
					</div>
					<div  class="col-md-5 col-sm-12 flex-block">
						<img  class="small-img" src="/static/images/i-icon.svg"/>
						<p class="medium-font-bold vertical-center">Check this out</p>
						<p>Try shaking your device</p>
					</div>
					<div class='col-md-5 col-sm-12 flex-block'>
						<p class="medium-font-bold">Motion</p>
						<div id="accelData" class="graphHolder"></div>
					</div>
					<div class="col-md-2"></div>
					<div class='col-md-5 col-sm-12 flex-block'>
						<p class="medium-font-bold">Orientation</p>
						<div id="gyroData" class="graphHolder"></div>
					</div>			
	    		</div>
	    	</div>
    	</div>
	</div>
	
	
	<script type="text/javascript" src="/static/js/three.min.js"></script>
	<script type="text/javascript" src="/static/js/d3.v3.min.js"></script>
	<script type="text/javascript" src="/static/js/rAF.js"></script>
	<script type="text/javascript" src="/static/js/jquery.js"></script>
	<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/static/js/util.js"></script>
	<script type="text/javascript" src="/static/js/jquery.qrcode.min.js"></script>
	<script type="text/javascript" src="/static/js/cube.js"></script>
</body>
</html>
