using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DSAnalysisTableAdapters;

/// <summary>
/// Summary description for BLLAnalysis
/// </summary>
/// 

[System.ComponentModel.DataObject]
public class BLLAnalysis
{
    private DSAnalysis.AnalysisDataTable dt;
    private DSAnalysisTableAdapters.AnalysisTableAdapter ad = null;
    public DSAnalysisTableAdapters.AnalysisTableAdapter adapter
    {
        get
        {
            if (ad == null)
                ad = new AnalysisTableAdapter();
            return ad;
        }
    }
	public BLLAnalysis()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    //Select Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
    public DSAnalysis.AnalysisDataTable Select_Record()
    {
        dt = adapter.GetData();
        return dt;
    }
    //Insert Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert,true)]
    public void Insert_Record(int Sh_Bimar, string HB, string WBC, string PLT, string CR, string LFT, string Analysis_Date)
    {
        adapter.Insert(Sh_Bimar, HB, WBC, PLT, CR, LFT, common.Shamsi_to_Miladi(Analysis_Date));
    }
    //Delete Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete,true)]
    public void Delete_Record(int Original_ShBimar)
    {
        adapter.Delete(Original_ShBimar);
        
    }
    //Update Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update,true)]
    public void Update_Record(string hb, string wbc, string plt, string cr, string lft, string analysys_date,int Original_ShBimar)
    {
        adapter.Update(hb, wbc, plt, cr, lft, common.Shamsi_to_Miladi(analysys_date), Original_ShBimar);
    }
}