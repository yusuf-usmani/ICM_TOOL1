using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication26
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (FileUploadControl.HasFile)
            {
                int filecount = 0;
                int fileuploadcount = 0;
                //check No of Files Selected  
                filecount = FileUploadControl.PostedFiles.Count();
                if (filecount <= 10)
                {
                    foreach (HttpPostedFile postfiles in FileUploadControl.PostedFiles)
                    {
                        //Get The File Extension  
                        string filetype = Path.GetExtension(postfiles.FileName);
                        // if (filetype.ToLower() == ".docx" || filetype.ToLower() == ".pdf" || filetype.ToLower() == ".txt" || filetype.ToLower() == ".doc")

                        //Get The File Size In Bite  
                        double filesize = postfiles.ContentLength;
                        if (filesize < (1048576))
                        {
                           
                            try
                            {
                                string filename = Path.GetFileName(postfiles.FileName);
                                FileUploadControl.SaveAs(Server.MapPath("~/Uploads/") + filename);
                                fileuploadcount++;
                            }
                            catch (Exception ex)
                            {
                                //Statuslabel.Visible = true;
                                //Statuslabel.ForeColor = System.Drawing.Color.Red;
                                //Statuslabel.Text = "The file could not be attached. The following error occured: " + ex.Message;
                            }
                        }
                        else
                        {
                            //Statuslabel.Visible = true;
                            //Statuslabel.ForeColor = System.Drawing.Color.Red;
                            //Statuslabel.Text = "The file could not be attached. The file size is big.";
                        }
                    }
                }
                
                    if(filecount==fileuploadcount)
                    {
                        Statuslabel.Visible = true;
                        Statuslabel.ForeColor = System.Drawing.Color.Blue;
                        Statuslabel.Text = "All file uploaded successfully, number of filesuploaded="+fileuploadcount;
                    }
                    else
                    {
                        Statuslabel.Visible = true;
                        Statuslabel.ForeColor = System.Drawing.Color.Red;
                        Statuslabel.Text = "Some file could not be uploaded, number of filesuploaded=" + fileuploadcount;
                    }
                    
                
            }

        }
    }
}