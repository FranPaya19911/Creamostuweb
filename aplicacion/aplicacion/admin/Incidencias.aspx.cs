﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aplicacion.admin
{
    public partial class Incidencias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                string valor = (string)Session["user"].ToString();
                if (valor != "admin")
                {
                    string url = "../Error.aspx";
                    HttpContext.Current.Response.Redirect(url);
                }
            }
        }
    }
}