using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class UploadFile : System.Web.UI.Page
    {
        protected int id;
        protected UserInfo userinfo;
        protected void Page_Load(object sender, EventArgs e)
        {
            var httpCookie = Request.Cookies["userid"];
            if (httpCookie != null)
            {
                var userid = httpCookie.Value;
                id = int.Parse(userid);
                userinfo = Data.GetUserById(id);
            }
            else
            {
                Response.Redirect("ValidError.aspx", true); 
            }
        }
    }
}