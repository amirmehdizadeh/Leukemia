using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Compilation;
using System.Reflection;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Text;
using System.Web.UI.HtmlControls;
using System.Net.Mail;
using System.IO;
using System.Web.UI.WebControls;

public partial class Reports : System.Web.UI.Page
{
    private string className = "";
    private string methodName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        className = Request.QueryString["classname"];
        methodName = Request.QueryString["methodname"];

        Type cls = BuildManager.GetType(className, true);
        Assembly asm = Assembly.GetAssembly(cls);
        object obj = asm.CreateInstance(className);
        MethodInfo m = cls.GetMethod(methodName);
        object d = m.Invoke(obj, new object[] { });
        GridView1.DataSource = (DataTable)d;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Response.ClearContent();
            string attachment = "attachment; filename=MyExelFile.xls";
            Response.ClearContent();
            Response.AddHeader("content-disposition", attachment);
            Response.ContentType = "application/ms-excel";
            StringWriter strWrite = new StringWriter();
            HtmlTextWriter htmWrite = new HtmlTextWriter(strWrite);
            HtmlForm htmfrm = new HtmlForm();
            GridView1.Parent.Controls.Add(htmfrm);
            htmfrm.Attributes["runat"] = "server";
            htmfrm.Controls.Add(GridView1);
            htmfrm.RenderControl(htmWrite);
            Response.Write(strWrite.ToString());
            Response.Flush();
            Response.End();
        }
        catch (Exception ex) { }
    }
}