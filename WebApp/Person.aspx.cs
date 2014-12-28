using System;
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
        private int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            var val = Request.QueryString["userid"];
            if (val == null)
            {
                Response.Redirect("ValidError.aspx",true); 
            }
            else
            {
                int.TryParse(val, out id);
                LoadInformationByID(id);
            }

        }

        private void LoadInformationByID(int id)
        {
            userinfo = Data.GetUserById(id);
        }
    }
}