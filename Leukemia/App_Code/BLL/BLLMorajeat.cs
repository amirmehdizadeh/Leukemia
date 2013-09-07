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
    public void Update_Record(string bime, int hazine, int sh_nobat, int vazn, string next_morajee, string morajee_date, string tozihat,int Original_Sh_Bimar)
    {
        adapter.Update(bime, hazine, sh_nobat, vazn, common.Shamsi_to_Miladi(next_morajee), common.Shamsi_to_Miladi(morajee_date), tozihat, Original_Sh_Bimar);
    }
}