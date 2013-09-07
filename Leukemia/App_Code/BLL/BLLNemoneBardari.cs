using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DSNemoneBardariTableAdapters;

/// <summary>
/// Summary description for BLLNemoneBardari
/// </summary>
/// 

[System.ComponentModel.DataObject]
public class BLLNemoneBardari
{
    private DSNemoneBardari.NemoneBardariDataTable dt;
    private DSNemoneBardariTableAdapters.NemoneBardariTableAdapter ad = null;
    public DSNemoneBardariTableAdapters.NemoneBardariTableAdapter adapter
    {
        get
        {
            if (ad == null)
                ad = new NemoneBardariTableAdapter();
            return ad;
        }
    }
	public BLLNemoneBardari()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
    public DSNemoneBardari.NemoneBardariDataTable Select_Record()
    {
        dt = adapter.GetData();
        return dt;
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert,true)]
    public void Insert_Record(int Sh_Bimar, string Bime, int Hazine, string Nemone_Date, string Tozihat)
    {
        adapter.Insert(Sh_Bimar, Bime, Hazine, common.Shamsi_to_Miladi(Nemone_Date), Tozihat);
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete,true)]
    public void Delete_Record(int Original_Sh_Bimar)
    {
        adapter.Delete(Original_Sh_Bimar);
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update,true)]
    public void Update_Record(string bime, int hazine, string nemone_date, string tozihat,int Original_Sh_Bimar)
    {
        adapter.Update(bime, hazine, common.Shamsi_to_Miladi(nemone_date), tozihat, Original_Sh_Bimar);
    }
}