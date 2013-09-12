using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DSNobatDehiTableAdapters;

/// <summary>
/// Summary description for BLLNobatDehi
/// </summary>
/// 


[System.ComponentModel.DataObject]
public class BLLNobatDehi
{
    private DSNobatDehi.NobatDehiDataTable dt;
    private DSNobatDehiTableAdapters.NobatDehiTableAdapter ad = null;
    public DSNobatDehiTableAdapters.NobatDehiTableAdapter adapter {
        get {
            if (ad == null) 
                ad = new NobatDehiTableAdapter();
            return ad;            
        }

    }
	public BLLNobatDehi()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    //Select Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
    public DSNobatDehi.NobatDehiDataTable Select_Record()
    {
        dt = adapter.GetData();
        return dt;
    }
    //Insert Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public void Insert_Record(int Sh_Bimar, int Pezeshk_Number, string Hozor_Date, String Tozihat)
    {
        adapter.Insert(Sh_Bimar, Pezeshk_Number, common.Shamsi_to_Miladi(Hozor_Date), Tozihat);
    }
    //Delete Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public void Delete_Record(int Original_Sh_Bimar)
    {
        adapter.Delete(Original_Sh_Bimar);

    }
    //Update Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update, true)]
    public void Update_Record(int Pezeshk_Number, string HozorDate_SH, string Tozihat, int Original_Sh_Bimar)
    {
        adapter.Update(Pezeshk_Number, common.Shamsi_to_Miladi(HozorDate_SH),Tozihat, Original_Sh_Bimar);
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
    public DSNobatDehi.NobatDehiDataTable Select_ByShBimar(int sh_bimar)
    {
        dt = adapter.GetDataBy(sh_bimar);
        int i;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][2] != null)
            {
                dt.Rows[i][4] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][2].ToString()));
            }
        }
        return dt;
    }
}