<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="Newtonsoft.Json" %>
<%@ Import Namespace="System.Net" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="refresh" content="120" />
    <title>Weather Display</title>
    <style>
    *{margin:0; padding:0; border:0; outline:0; font-size:100%; vertical-align:baseline}
    </style>
</head>
<body style="overflow:hidden; height:480px; width:800px; background-color:deepskyblue; background-size:800px 480px; background-repeat:no-repeat; margin:0px">
    <form id="form1" runat="server">
        <%Classes.WeatherReport Result = JsonConvert.DeserializeObject<Classes.WeatherReport>(new WebClient().DownloadString("https://api.darksky.net/forecast/[KEY]/[LAT],[LONG]?units=si"));%>
        
    <div style="display:inline-block; width:390px; height:480px; margin-top:0px;">
        <div>
            <h1 style="font-size:48px; font-family:Arial;"><%Response.Write(Classes.FromUnix(Result.currently.time).ToString("ddd hh:mm")); %></h1>
            <img src="icons/<%Response.Write(Result.currently.icon);%>.png" style="height:128px; margin-left:20px; margin-top:20px; display:inline-block"/>
	    <br/><br/>
            <h1 style="font-size:24px; font-family:Arial; display:inline-block"><%Response.Write(Result.currently.icon);%></h1>
        </div>
	    <br/>
            <h1 style="font-size:72px; font-family:Arial; margin-left:20px; margin-top:0px"><%Response.Write(Result.currently.temperature.ToString("0.0"));%>°C</h1>
	    <br/>
            <p style="font-size:16px; font-family:Arial;">Summery: <%Response.Write(Result.daily.summary);%></p>
	    <br/>
        <p style="font-size:12px; color:white">Powered by the Dark Sky API</p>
    </div>
    <div style="display:inline-block; width:390px; max-height:480px;  margin:0px">
	<%for (int i = 0; i < 5; i++)
            { %>
        <div style="margin:0px; border:2px solid black; height:87px">

            <p style="font-size:16px; font-family:Arial; margin:0px"><%Response.Write(Classes.FromUnix(Result.daily.data[i].time).ToString("ddd")); %></p>
            <img src="icons/<%Response.Write(Result.daily.data[i].icon);%>.png" style="height:64px; display:inline-block"/>
            <h2 style="font-size:18px; font-family:Arial; margin:0px; display:inline-block">Max: <%Response.Write(Result.daily.data[i].temperatureMax.ToString("0"));%></h2>
            <h2 style="font-size:18px; font-family:Arial; margin:0px; display:inline-block">Min: <%Response.Write(Result.daily.data[i].temperatureMin.ToString("0"));%></h2>


            <!-- Left, weather icon
                Right, max & min temps for day -->
        </div>
        <%} %>
        
    </div>
    </form>
</body>
</html>

