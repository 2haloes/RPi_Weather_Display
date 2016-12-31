unclutter -display :0 -noevents -grab&
(sleep 5s && chromium-browser --disable-session-crashed-bubble --chrome-frame --incognito --kiosk http://localhost:9000/index.aspx) &
cd ~/WeatherApp
xsp2
