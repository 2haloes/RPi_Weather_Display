using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Classes
/// </summary>
public class Classes
{
    public class RightNow
    {
        public string summary;
        public string icon;
        public double temperature;
        public long time;
    }
    public class ByDay
    {
        public string summary;
        public DayData[] data = new DayData[4];
    }

    public class DayData
    {
        public string summary;
        public string icon;
        public long time;
        public double temperatureMin;
        public double temperatureMax;
    }
    public static DateTime FromUnix(long Time)
    {
        DateTime epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
        return epoch.AddSeconds(Time);
    }
    public class WeatherReport
    {
        public RightNow currently;
        public ByDay daily;
    }
}