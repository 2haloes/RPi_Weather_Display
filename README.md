# RPi_Weather_Display

This is a basic display of the weather, it's very basic but it does work. It refreshes once every 2 minutes and because of the API used, will work beter in the US and UK over other countries.

#How to setup the files

0) Download the WeatherApp

1) Create a darksky account and insert your key into the index.aspx (The part labeled [KEY])

2) Find your Lat and Long (There are online services to do this) and insert it into the index.aspx (The parts labeled [LAT] and [LONG]

2.5) Change the units if needed, si for standard format, us for us format

3) Add icons with a png extention to the icons folder named clear-day, clear-night, rain, snow, sleet, wind, fog, cloudy, partly-cloudy-day, and partly-cloudy-night or there'll be issues with displaying icons

4) Copy the files to the raspberry pi, I suggest copying the website files to to ~/WeatherApp (To save editing a script later) and the scripts to ~/

#How to setup on the RPi

0) (Optional) Uninstall Sonic-Pi as it can cause updaing to take a very long time (This is raspbian, not for the site)

1) Set the SetupScript.sh to executable and execute it as root r with elevated permissions, it will install and setup the software required (Update all packages, install mono with xsp and then import SSL certificates)

2) Copy the WeatherApp folder to the home folder (~/)

3) Run startup.sh and the page should load with weather data

4) You should then edit [INSERT FILE HERE] and /etc/profile (Add the path to the startup.sh for example ~/RPi_Weather_Display/startup.sh)

5) On boot and after 5 seconds, everything should load

#Issues and things to change

-I'll add a script to add and change anything needed, such as editing the index.aspx and changeing /etc/profile 

-Add icons that are free to share

-Clean up the CSS
