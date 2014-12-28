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


        protected string fileList;

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

            List<string> allfile = Data.GetAllFile(id);
            CreateFilelist(allfile);
        }

        protected void CreateFilelist(List<string> allfile )
        {
            foreach (var file in allfile)
            {
                string tmp ="<li>"+file+"</li>";
                fileList = fileList + tmp;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string filename = FileUpload1.FileName;

            var path = Data.AddFile(id, filename);

            if (path != null)
            {
                FileUpload1.PostedFile.SaveAs(path);
            }

            Response.Redirect("UploadFile.aspx", true); 
        }
    }
}