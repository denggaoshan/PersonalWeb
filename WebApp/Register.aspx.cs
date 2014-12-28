using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var username = Request.QueryString["user"];
            var password = Request.QueryString["psw"];

            if (username == null)
            {
                return;
            }

            if (-1 != Data.GetIdByUsername(username))
            {
                Response.Redirect("ValidError.aspx", true);
            }
            else
            {
                int id = Data.AddUser(username, password);
                Response.Redirect("Person.aspx?type=land&userid="+id,true);
            }
        }
    }
}