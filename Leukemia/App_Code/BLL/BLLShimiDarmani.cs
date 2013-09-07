using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DSShimiDarmaniTableAdapters;
/// <summary>
/// Summary description for BLLShimiDarmani
/// </summary>
/// 


[System.ComponentModel.DataObject]
public class BLLShimiDarmani
{
    private DSShimiDarmani.ShimiDarmaniDataTable dt;
    private DSShimiDarmaniTableAdapters.ShimiDarmaniTableAdapter ad = null;
    public DSShimiDarmaniTableAdapters.ShimiDarmaniTableAdapter adapter {
        get {
            if (ad == null)
                ad = new ShimiDarmaniTableAdapter();
            return ad;
        }
    }
	public BLLShimiDarmani()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //Select Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
    public DSShimiDarmani.ShimiDarmaniDataTable Select_Record() {
        dt = adapter.GetData();
        return dt;
    }
    //Insert Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public void Insert_Record(int Sh_Bimar, string Bime, int Hazine, string Shimi_Date, string Tozihat) {
        adapter.Insert(Sh_Bimar, Bime, Hazine, common.Shamsi_to_Miladi(Shimi_Date), Tozihat);
    }
    //Delete Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public void Delete_Record(int Original_Sh_Bimar) {
        adapter.Delete(Original_Sh_Bimar);
    }
    //Update Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update, true)]
    public void Update_Record(string Bime, int Hazine, string Shimi_Date, string Tozihat, int Original_Sh_Bimar) {
        adapter.Update(Bime, Hazine, common.Shamsi_to_Miladi(Shimi_Date), Tozihat, Original_Sh_Bimar);
    }
}