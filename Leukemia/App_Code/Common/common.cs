using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;

/// <summary>
/// Summary description for common
/// </summary>
public class common
{
	public common()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static string Miladi_to_Shamsi(DateTime d)
    {
        PersianCalendar persion = new PersianCalendar();
        int year, month, day;
        year = persion.GetYear(d);
        month = persion.GetMonth(d);
        day = persion.GetDayOfMonth(d);
        return (year.ToString() + "/" + month.ToString() + "/" + day.ToString());
    }
    public static DateTime Shamsi_to_Miladi(string s)
    {
        PersianCalendar persion = new PersianCalendar();
        string[] d = s.Split('/');
        return (persion.ToDateTime(int.Parse(d[0]), int.Parse(d[1]), int.Parse(d[2]), 0, 0, 0, 0));
    }
}