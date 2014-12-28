using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class MainWeb : System.Web.UI.Page
    {
        private int UserID;
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["user"];
            var psw = Request.QueryString["psw"];

            UserID = Data.CheckUser(name, psw);

            //验证用户名密码：
            if (UserID != -1 )
            {
                Response.Redirect("./Person.aspx?type=land&userid="+UserID, true);
            }
            else
            {
                Response.Redirect("ValidError.aspx", true); 
            }

        }

    }
}