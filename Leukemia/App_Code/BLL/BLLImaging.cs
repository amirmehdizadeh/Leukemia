using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DSImagingTableAdapters;

/// <summary>
/// Summary description for BLLImaging
/// </summary>
/// 

[System.ComponentModel.DataObject]
public class BLLImaging
{
    private DSImaging.ImagingDataTable dt;
    private DSImagingTableAdapters.ImagingTableAdapter ad = null;
    public DSImagingTableAdapters.ImagingTableAdapter adapter
    {
        get
        {
            if (ad == null)
                ad = new ImagingTableAdapter();
            return ad;
        }
    }
	public BLLImaging()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
    public DSImaging.ImagingDataTable Select_Record()
    {
        dt = adapter.GetData();
        int i;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][3] != null)
                dt.Rows[i][5] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][3].ToString()));
        }
        return dt;
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert,true)]
    public void Insert_Record(int Sh_Bimar,string US,string CT,string Img_Date,string Tozihat)
    {
        adapter.Insert(Sh_Bimar, US, CT, common.Shamsi_to_Miladi(Img_Date), Tozihat);

    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete,true)]
    public void Delete_Record(int Original_Sh_Bimar)
    {
        adapter.Delete(Original_Sh_Bimar);
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update,true)]
    public void Update_Record(string us, string ct, string ImgDate_SH, string tozihat,int Original_Sh_Bimar)
    {
        adapter.Update(us, ct, common.Shamsi_to_Miladi(ImgDate_SH), tozihat, Original_Sh_Bimar);
    }
    [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select,true)]
    public DSImaging.ImagingDataTable Select_ByShBimar(int sh_Bimar)
    {
        dt = adapter.GetDataBy(sh_Bimar);
        int i;
        for (i = 0; i < dt.Rows.Count; i++)
        {
            if (dt.Rows[i][3] != null)
                dt.Rows[i][5] = common.Miladi_to_Shamsi(Convert.ToDateTime(dt.Rows[i][3].ToString()));
        }
        return dt;

    }
}