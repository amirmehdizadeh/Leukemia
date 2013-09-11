using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DSPathalogyTableAdapters;

/// <summary>
/// Summary description for BLLNobatDehi
/// </summary>
/// 


[System.ComponentModel.DataObject]
public class BLLPathalogy
{
    private DSPathalogy.PathalogyDataTable dt;
    private DSPathalogyTableAdapters.PathalogyTableAdapter ad=null;
    public  DSPathalogyTableAdapters.PathalogyTableAdapter  adapter
    {
        get
        {
            if (ad == null)
                ad = new PathalogyTableAdapter() ;
            return ad;
        }

    }
    public BLLPathalogy()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    //Select Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
    public DSPathalogy.PathalogyDataTable Select_Record()
    {
        dt = adapter.GetData();
        int i;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][7] != null)
            {
                dt.Rows[i][8] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][7].ToString()));
            }

        }
        return dt;
    }
    //Insert Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert, true)]
    public void Insert_Record(int Sh_Bimar,string Type,string T,string M,string N,string Stage,string Nemone_Place,string pathalogy_Date)
    {
        adapter.Insert(Sh_Bimar,Type,T,M,N,Stage,Nemone_Place,common.Shamsi_to_Miladi(pathalogy_Date));
    }
    //Delete Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete, true)]
    public void Delete_Record(int Original_Sh_Bimar)
    {
        adapter.Delete(Original_Sh_Bimar);

    }
    //Update Method
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update, true)]
    public void Update_Record(string type,string t,string m,string n,string stage,string nemone_place,string PathalogyDate_SH,int Original_Sh_Bimar)
    {
        adapter.Update(type,t,m,n,stage,nemone_place,common.Shamsi_to_Miladi(PathalogyDate_SH),Original_Sh_Bimar);
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
    public DSPathalogy.PathalogyDataTable Select_ByShBimar(int sh_bimar)
    {
        dt = adapter.GetDataBy(sh_bimar);
        int i;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][7] != null)
            {
                dt.Rows[i][8] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][7].ToString()));
            }

        }
        return dt;
    }
}