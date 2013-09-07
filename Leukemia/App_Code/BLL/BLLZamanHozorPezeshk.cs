using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DSZamanHozorPezeshkTableAdapters;

/// <summary>
/// Summary description for BLLZamanHozorPezeshk
/// </summary>
/// 


[System.ComponentModel.DataObject]
public class BLLZamanHozorPezeshk
{
    private DSZamanHozorPezeshk.ZamanHozorPezeshkDataTable dt;
    private DSZamanHozorPezeshkTableAdapters.ZamanHozorPezeshkTableAdapter ad = null;
    public DSZamanHozorPezeshkTableAdapters.ZamanHozorPezeshkTableAdapter adapter {
        get {
            if (ad == null)
                ad = new ZamanHozorPezeshkTableAdapter();
            return ad;
        }
    }
	public BLLZamanHozorPezeshk()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //Select Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
    public DSZamanHozorPezeshk.ZamanHozorPezeshkDataTable Select_Recorcd() {
        dt = adapter.GetData();
        return dt;
    }
    //Insert Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public void Insert_Record(int Pezeshk_Number, string Days, string Hozor, string Finish) {
        adapter.Insert(Pezeshk_Number, Days, common.Shamsi_to_Miladi(Hozor), common.Shamsi_to_Miladi(Finish));
    }
    //Delete Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public void Delete_Record(int Original_Pezeshk_Number) {
        adapter.Delete(Original_Pezeshk_Number);
    }
    //Update Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update, true)]
    public void Update_Record(string Days, string Hozor, string Finish,int Original_Pezeshk_Number)
    {
        adapter.Update(Days, common.Shamsi_to_Miladi(Hozor), common.Shamsi_to_Miladi(Finish), Original_Pezeshk_Number);
    }
}