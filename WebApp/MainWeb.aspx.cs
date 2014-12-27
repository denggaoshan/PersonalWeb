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
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["user"];
            var psw = Request.QueryString["psw"];
            
            //验证用户名密码：
            if (name == "denggaoshan" && psw == "5610201")
            {
                Response.Redirect("./Person.aspx", false);
            }
            else
            {
                Response.Redirect("ValidError.aspx", false); 
            }
        }
    }
}