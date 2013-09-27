using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_LoginError(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser(Login1.UserName);
        Control c = (Control)Login1;
        Label lblmessage = (Label)c.FindControl("lblmessage");
        if (c != null)
        {
            if (user == null)
            {
                lblmessage.Text = "نام کاربری موجود نمی باشد";

            }
            else
                if (user != null)
                {
                    lblmessage.Text = "رمز ورود اشتباه است";
                }
        }
    }
    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        Session["username"] = Login1.UserName;
        if (Login1.UserName == "admin")
            Response.Redirect("Default2.aspx");
        else
            Response.Redirect("Default2.aspx");
    }
}