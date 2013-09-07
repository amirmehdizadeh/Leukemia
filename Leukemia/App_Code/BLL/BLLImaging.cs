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
    public void Update_Record(string us, string ct, string img_date, string tozihat,int Original_Sh_Bimar)
    {
        adapter.Update(us, ct, common.Shamsi_to_Miladi(img_date), tozihat, Original_Sh_Bimar);
    }
}