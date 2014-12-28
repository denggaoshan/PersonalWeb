﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Person : System.Web.UI.Page
    {
        protected UserInfo userinfo;
        static public int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            var type = Request.QueryString["type"];

            if (type == null )
            {
                Response.Redirect("ValidError.aspx", true);
            }

            if (type == "land")
            {
                var val = Request.QueryString["userid"];
                if (val == null)
                {
                    Response.Redirect("ValidError.aspx", true);
                }
                else
                {
                    int.TryParse(val, out id);
                    LoadInformationByID(id);
                    return;
                }
            }

            if (type == "modified")
            {
                var name = Request.QueryString["name"];
                if (name != null)
                {
                    UserInfo info = new UserInfo();
                    info.email = Request.QueryString["email"];
                    info.phone = Request.QueryString["phone"];
                    info.address = Request.QueryString["address"];
                    info.Id = id;
                    info.name = name;
                    Data.ModifyInfo(id, info);
                    Response.Redirect("./Person.aspx?type=land&userid=" + id, true);
                }
            }
           
        }

        private void LoadInformationByID(int id)
        {
            userinfo = Data.GetUserById(id);
        }
    }
}