using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DSTajvizTableAdapters;

/// <summary>
/// Summary description for BLLTajviz
/// </summary>
/// 

[System.ComponentModel.DataObject]
public class BLLTajviz
{
    private DSTajviz.TajvizDataTable dt;
    private DSTajvizTableAdapters.TajvizTableAdapter ad = null;
    public DSTajvizTableAdapters.TajvizTableAdapter adapter {
        get {
            if (ad == null)
                ad = new TajvizTableAdapter();
            return ad;
        }
    }
	public BLLTajviz()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //Select Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
    public DSTajviz.TajvizDataTable Select_Record() {
        dt = adapter.GetData();
        return dt;
    }
    //Insert Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public void Insert_Record(int Sh_Bimar, string Daro_name, string Doz_Daro, string Dor_Darman, string Tajviz_Date, string Tozihat) {
        adapter.Insert(Sh_Bimar, Daro_name, Doz_Daro, Dor_Darman, common.Shamsi_to_Miladi(Tajviz_Date), Tozihat);
    }
    //Delete Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public void Delete_Record(int Original_Sh_Bimar) {
        adapter.Delete(Original_Sh_Bimar);
    }
    //Update Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update, true)]
    public void Update_Record(string Daro_name, string Doz_Daro, string Dor_Darman, string Tajviz_Date, string Tozihat,int Original_Sh_Bimar) {
        adapter.Update(Daro_name, Doz_Daro, Dor_Darman, common.Shamsi_to_Miladi(Tajviz_Date), Tozihat, Original_Sh_Bimar);
    }
}