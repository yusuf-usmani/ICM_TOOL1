using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //    if (FileUploadControl.HasFile)
        //    {
        //        try
        //        {
        //                    string filename = Path.GetFileName(FileUploadControl.FileName);
        //                    FileUploadControl.SaveAs(Server.MapPath("~/Uploads/") + filename);
        //                    Label7.Visible = true;
        //                    Label7.Text = "File attached Successfully";
                    
        //        }
        //        catch (Exception ex)
        //        {
        //            Label7.Visible = true;
        //            Label7.ForeColor = System.Drawing.Color.Red;
        //            Statuslabel.Text = "The file could not be attached. The following error occured: " + ex.Message;
        //        }
        //    }

        //}
    }
}