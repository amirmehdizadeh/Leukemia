﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Morajeat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (HDel.Value == "false")
            e.Cancel = true;
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Upd")
        {
            HEdit.Value = e.CommandArgument.ToString();
            FormView1.ChangeMode(FormViewMode.Edit);
        }
    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (HDel.Value == "false")
            e.Cancel = true;
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Upd")
        {
            HEdit.Value = e.CommandArgument.ToString();
            FormView2.ChangeMode(FormViewMode.Edit);
        }
    }
    protected void FormView2_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        GridView2.DataBind();
    }
    protected void FormView2_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        GridView2.DataBind();
    }
}