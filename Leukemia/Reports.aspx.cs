using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Compilation;
using System.Reflection;
using System.Data;
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
}