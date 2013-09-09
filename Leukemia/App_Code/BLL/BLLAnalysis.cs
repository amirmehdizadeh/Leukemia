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
        int i;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][6] != null)
                dt.Rows[i][7] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][6].ToString()));
        }
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
    public void Delete_Record(int Original_Sh_Bimar)
    {
        adapter.Delete(Original_Sh_Bimar);
        
    }
    //Update Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update,true)]
    public void Update_Record(string hb, string wbc, string plt, string cr, string lft, string AnalysisDate_SH,int Original_Sh_Bimar)
    {
        adapter.Update(hb, wbc, plt, cr, lft, common.Shamsi_to_Miladi(AnalysisDate_SH), Original_Sh_Bimar);
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
    public DSAnalysis.AnalysisDataTable Select_ByShBimar(int sh_bimar)
    {
        dt = adapter.GetDataBy(sh_bimar);
        int i;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][6] != null)
                dt.Rows[i][7] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][6].ToString()));
        }
        return dt;
    }
}