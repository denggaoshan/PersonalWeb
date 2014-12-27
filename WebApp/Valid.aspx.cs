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

            UserID = CheckUser(name, psw);

            //验证用户名密码：
            if (UserID != null )
            {
                Response.Redirect("./Person.aspx", false);
            }
            else
            {
                Response.Redirect("ValidError.aspx", false); 
            }
        }

        private int CheckUser(string name,string psw)
        {
            DataLinkDataContext ctx = new DataLinkDataContext();

            var query = from user in ctx.User
                where user.username == "denggaoshan" && user.password == "5610201"
                select user;

            var cont = query.Count();

            ctx.SubmitChanges();
            return 1;
        }
    }
}