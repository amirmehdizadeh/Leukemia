using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DSBimarTableAdapters;

/// <summary>
/// Summary description for BLLBimar
/// </summary>
/// 

[System.ComponentModel.DataObject]
public class BLLBimar
{
    private DSBimar.BimarDataTable dt;
    private DSBimarTableAdapters.BimarTableAdapter ad = null;
    public DSBimarTableAdapters.BimarTableAdapter adapter
    {
        get
        {
            if (ad == null)
                ad = new BimarTableAdapter();
            return ad;
        }
    }
	public BLLBimar()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
    public DSBimar.BimarDataTable Select_Record()
    {
        dt = adapter.GetData();
        int i;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][4] != null)
            {
                dt.Rows[i][12] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][4].ToString()));
                dt.Rows[i][13] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][11].ToString()));
            }
        }
        return dt;
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert,true)]
    public void Insert_Record(int Sh_Bimar, string Name, string Family, string Birth_Date, int Ghad, int Vazn, string Sex, string Phone_Number, string Tashkhis, string Barnam_Darmani, string morajee_Date)
    {
        adapter.Insert(Sh_Bimar, Name, Family, common.Shamsi_to_Miladi(Birth_Date), Ghad, Vazn, Sex, Phone_Number, Tashkhis, Barnam_Darmani, common.Shamsi_to_Miladi(morajee_Date));
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete,true)]
    public void Delete_Record(int Original_Sh_Bimar)
    {
        adapter.Delete(Original_Sh_Bimar);
    }   
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update,true)]
    public void Update_Record(int Sh_Bimar,string name,string family,string birth_date,int ghad,int vazn,string sex,string phone_number,string tashkhis,string barnam_darmani,string morajee_date,int Original_Sh_Bimar)
    {
        adapter.Update(name, family, common.Shamsi_to_Miladi(birth_date), ghad, vazn, sex, phone_number, tashkhis, barnam_darmani, common.Shamsi_to_Miladi(morajee_date), Original_Sh_Bimar);
 
    }
}