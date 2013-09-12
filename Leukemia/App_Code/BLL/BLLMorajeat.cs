using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DSMorajeatTableAdapters;

/// <summary>
/// Summary description for BLLMorajeat
/// </summary>
/// 

[System.ComponentModel.DataObject]
public class BLLMorajeat
{
    private DSMorajeat.MorajeatDataTable dt;
    private DSMorajeatTableAdapters.MorajeatTableAdapter ad = null;
    public DSMorajeatTableAdapters.MorajeatTableAdapter adapter
    {
        get
        {
            if (ad == null)
                ad = new MorajeatTableAdapter();
            return ad;
        }
    }
	public BLLMorajeat()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
    public DSMorajeat.MorajeatDataTable Select_Record()
    {
        dt = adapter.GetData();
        int i;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][5] != null && dt.Rows[i][6] != null)
            {
                dt.Rows[i][8] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][5].ToString()));
                dt.Rows[i][9] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][6].ToString()));
            }
        }
        return dt;
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert,true)]
    public void Insert_Record(int Sh_Bimar,string Bime,int Hazine,int Sh_Nobat,int Vazn,string Next_Morajee,string Morajee_Date,string Tozihat)
    {
        adapter.Insert(Sh_Bimar, Bime, Hazine, Sh_Nobat, Vazn, common.Shamsi_to_Miladi(Next_Morajee), common.Shamsi_to_Miladi(Morajee_Date), Tozihat);
 
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete,true)]
    public void Delete_Record(int Original_Sh_Bimar)
    {
        adapter.Delete(Original_Sh_Bimar);
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update,true)]
    public void Update_Record(string bime, int hazine, int sh_nobat, int vazn, string NextMorajee_SH, string MorajeeDate_SH, string tozihat,int Original_Sh_Bimar)
    {
        adapter.Update(bime, hazine, sh_nobat, vazn, common.Shamsi_to_Miladi(NextMorajee_SH), common.Shamsi_to_Miladi(MorajeeDate_SH), tozihat, Original_Sh_Bimar);
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
    public DSMorajeat.MorajeatDataTable Select_ByShBimar(int sh_bimar)
    {
        dt = adapter.GetDataBy(sh_bimar);
        int i;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][5] != null && dt.Rows[i][6] != null)
            {
                dt.Rows[i][8] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][5].ToString()));
                dt.Rows[i][9] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][6].ToString()));
            }
        }
        return dt;
    }
}