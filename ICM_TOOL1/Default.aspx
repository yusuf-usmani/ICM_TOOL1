<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .Background
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .Popup
        {
            background-color: #FFFFFF;
            border-width: 3px;
            border-style: solid;
            border-color: black;
            padding-top: 10px;
            padding-left: 10px;
            width: 35%;
            height: 35%;
            border-radius: 3px; box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
        }
        
    </style>

    <div class="jumbotron" style="width: 800px;margin: 20px auto;border: 0 none; border-radius: 3px; box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4); padding: 20px 40px; box-sizing: border-box; ">
    <h1 style="padding-left:22%"><b>Search Partner Support Request</b></h1>
    </div>

     <div class="well" style="padding-left:18%; width: 800px;	margin: 20px auto; text-align: center; position: relative; border: 0 none; border-radius: 3px; box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);  box-sizing: border-box; "> 
         <fieldset>
          <div class="row form-group">
                        <div class="col-lg-2">
                            <asp:Label ID="Label1" runat="server" Text="IssueType" class = "control-label" style = "color:darkslateblue"></asp:Label>
                         </div>
                        <div class="col-lg-10">
                            
                            <asp:DropDownList ID="DropDownList1" runat="server" class = "form-control"  style = "width:60%">
                                <asp:ListItem Value="0" Selected="True">Select the issuetype</asp:ListItem>
                                <asp:ListItem Value="1">Bug</asp:ListItem>
                                <asp:ListItem Value="2">Information</asp:ListItem>
                            </asp:DropDownList>
                            
                        </div>
              </div>

           <div class="row form-group">
                        <div class="col-lg-2">
                            <asp:Label ID="Label2" runat="server" Text="Description" class = "control-label" style = "color:darkslateblue"></asp:Label>
                         </div>
                        <div class="col-lg-10">
                            <textarea id="TextArea1"  name="TextArea1"  class = "form-control" style = "width:60%;height:100px" ></textarea>
                        </div>
         </div>

         <div class="row form-group">
                        <div class="col-lg-2">
                            <asp:Label ID="Label3" runat="server" Text="ReproSteps" class = "control-label" style = "color:darkslateblue"></asp:Label>
                         </div>
                        <div class="col-lg-10">
                            <textarea id="TextArea2"  name="TextArea2"  class = "form-control" style = "width:60%;height:100px" ></textarea>
                        </div>
           </div>

            <div class="row form-group">
                  <div class="col-lg-2">

                  </div>
                  <div class="col-lg-8">
                       <asp:Label ID="Label4" runat="server" Text="Attachment" class = "control-label" style = "color:darkslateblue; float:left"></asp:Label> 

                       <%--<asp:CheckBox ID="CheckBox1" Class="toggle" runat="server" style="padding-left:5px; float:left"   />--%>
                       <asp:ImageButton ID="ImageButton1" runat="Server" ImageUrl="~/Images/Attach2.ico" Style="height:20px;padding-left:10px; float:left"/>
                  </div>
              </div>


         <div class="row form-group">
                        <div class="col-lg-2">
                            <asp:Label ID="Label5" runat="server" Text="Severity" class = "control-label" style = "color:darkslateblue"></asp:Label>
                         </div>
                        <div class="col-lg-10">
                            
                            <asp:DropDownList ID="DropDownList2" runat="server" class = "form-control"  style = "width:60%">
                                <asp:ListItem Value="0" Selected="True">Select the issue Severity</asp:ListItem>
                                <asp:ListItem Value="1">High</asp:ListItem>
                                <asp:ListItem Value="2">Low</asp:ListItem>
                                <asp:ListItem Value="3">Medium</asp:ListItem>
                            </asp:DropDownList>
                            
                        </div>
              </div>

          <div class="row form-group">
                        <div class="col-lg-2">
                            <asp:Label ID="Label6" runat="server" Text="API Type" class = "control-label" style = "color:darkslateblue"></asp:Label>
                         </div>
                        <div class="col-lg-10">
                            
                            <asp:DropDownList ID="DropDownList3" runat="server" class = "form-control"  style = "width:60%">
                                <asp:ListItem Value="0" Selected="True">Select API Type</asp:ListItem>
                                <asp:ListItem Value="1">Search</asp:ListItem>
                                <asp:ListItem Value="2">Video</asp:ListItem>
                                <asp:ListItem Value="3">News</asp:ListItem>
                                <asp:ListItem Value="1">Images</asp:ListItem>
                                <asp:ListItem Value="2">AutoSuggest</asp:ListItem>
                                <asp:ListItem Value="3">Other</asp:ListItem>
                            </asp:DropDownList>
                            
                        </div>
              </div>

         <div  style="padding-left:18.5%">
              <asp:Button id="btn1" class="btn" type="submit" value="Submit"  style="background-color:#177cab;color:white;float:left;width:30%;" runat="server" Text="Close" />
         </div>
             <br /> <br />
             <div class="row form-group">
                 <div class="col-lg-8" style="padding-top:5px">
                 <asp:Label ID="Label7" runat="server" Text="Label" Visible="false"></asp:Label>
                     </div>
           </div>
         </fieldset>
     
         </div>

  

    <cc1:ModalPopupExtender  ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="ImageButton1"  
    CancelControlID="Button2" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <asp:Panel Title="File" ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">
        
           
        <h4 style="align-content:center;color:#177cab">Attach File</h4>
        <hr />
        
    <iframe style=" width: 90%; height:40%;" id="irm1" src="WebForm2.aspx" runat="server"></iframe>
       
   <br/>
    <asp:Button ID="Button2"  style="background-color:#177cab;color:white;width:20%;" runat="server" Text="Close" />
             
   </asp:Panel>


     
    <%-- <div class="modal" id="fileUpload" tabindex="-1">
             <div class="modal-dialog">
                 <div class="modal-content">
                     <div class="modal-header">
                         <button class="close" data-dismiss="modal">&times;</button>
                         <h4 class="modal-title">FileUpload</h4>
                     </div>
                     <div class="modal-body">
                         
                             <div class="form-group">
                             <div class="col-lg-10">
                                 <asp:FileUpload id="FileUploadControl" runat="server"/>
                             </div>
                             
                             <div class="col-lg-2" style="padding-left:5px">
                              
                                  
                                  <asp:Button class="btn btn-primary form-control" ID="UploadButton" runat="server" OnClick="Button1_Click" Text="Upload" />
                             </div>
                             <asp:Label id="Statuslabel" runat="server"></asp:Label>
                                
                             </div>
                         
                     </div>
                     <div class="modal-footer">
                         <button class="btn" data-dismiss="modal">Close</button>
                     </div>
                 </div>
             </div>
         </div>



 <script>
        $(document).ready(function () {
            $('input[type="checkbox"]').on('change', function (e) {
                if (e.target.checked) {
                    $('#fileUpload').modal();
                }
            });
        })
    </script>--%>

</asp:Content>

