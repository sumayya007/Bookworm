﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="BookWorm.chat" %>
<!DOCTYPE html>

 
     <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta charset="utf-8"> <meta name="viewport" content="width=device-width, initial-scale=1">
          <title>Forum :: Home Page</title>
          <link href="./css/bootstrap.min.css" rel="stylesheet">
          <link href="./css/messsages.css" rel="stylesheet">
          <link href="./fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
         <style type="text/css">
             #ms-scrollbar::-webkit-scrollbar-track{background-color:#CCCCCC;}
             #ms-scrollbar::-webkit-scrollbar{width: 7px;background-color: #F5F5F5;}
             #ms-scrollbar::-webkit-scrollbar-thumb{background-color:#eeeeee;-webkit-box-shadow: inset 0 0 0px rgba(0,0,0,0.3);}
             .ms-new{box-shadow:0 2px 5px rgba(0,0,0,0.16),0 2px 10px rgba(0,0,0,0.12); background-color:#2196f3;}
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" rel="stylesheet"/>

         </style> 
         <script src="jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
         <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
         <script type="text/javascript">
        //function SetScrollPosition() {
        //    var div = document.getElementById('div.lv-body');
        //    div.scrollTop = 100000000000;
        //}
        //<![CDATA[
        //$(window).load(function () {
        //    $(".chat").animate({ scrollTop: $(document).height() }, "slow");
        //    return false;
        //});//]]> 
        //var $cont = $('.chat');
        //$cont[0].scrollTop = $cont[0].scrollHeight;
        window.onload = function () {
            $("div.lv-body").scrollTop(10000);
        };
        //function scroll() {
            
        //    var objDiv = document.getElementById('div.lv-body');
        //        objDiv.scrollTop = objDiv.scrollHeight;
        //       setTimeout("scroll()", 1);
        //}
    </script>
         <link href="css/font-awesome.css" rel="stylesheet" />
    <style>
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;
                      
  }

  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
   
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
   
  }
}
        </style>
     </head> 
     <body> 
         <form runat="server">
             <div class="topnav" id="myTopnav">
        <a href="entry.aspx"><span style="font-weight:bold;">THE BOOK SHOP</span></a>
        <a href="userhome.aspx">View Books</a>
        <a href="sellbooks.aspx">Sell Books</a>
        <a href="usersalelist.aspx">My Sale List</a>
        <a href="editsellerdetails.aspx">My Account</a>
        <a href="logout.aspx">Logout</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i></a>
      
 
</div> 
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <div class="container-fluid"> 
                 <div class="container ng-scope"> 
                     <div class="block-header"> 
                         <h2> </h2>

                     </div>
                     <div class="card m-b-0" id="messages-main" style="box-shadow:0 0 40px 1px #c9cccd;">
                          <div class="ms-menu" style="overflow:scroll; overflow-x: hidden;" id="ms-scrollbar"> 
                              <div class="ms-block">
                                   <div class="ms-user">
                                        <%--<img src="./images/avatar.jpg" alt=""> --%>
                                       <asp:Image ID="Image1" runat="server" />
                                  <h5 class="q-title" align="center">
                                      Welcome 
                                      <asp:Label ID="Label1" runat="server" Text="Label" style="color:red;"></asp:Label> </h5><br/><h5><b>5</b> New Messages</h5>
                                   </div>
                              </div>
                              <div class="ms-block">
                                   <a class="btn btn-primary btn-block ms-new" href="#"><span class="glyphicon glyphicon-envelope"></span>&nbsp; New Message</a> 
                              </div><hr/> 
                              <div class="listview lv-user m-t-20">
                                  <p style="text-align:center;direction:block;margin:0 auto;text-decoration:underline;">FRIENDLIST</p>
                                 
                                 
                                  <asp:DataList ID="DataList1" runat="server" style="margin-left:25px;"  DataKeyField="friendsid" DataSourceID="SqlDataSource1" OnItemDataBound="DataList1_ItemDataBound">
                                      <ItemTemplate>
                                         
                                         
                                          <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("recievername") %>' OnClick="LinkButton1_Click" CommandArgument='<%# Eval("recievername") %>' ForeColor="Black"></asp:LinkButton>
                                         
                                      </ItemTemplate>
                                  </asp:DataList>
                                      

                                      
                                  
                                      

                                      
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookshopdataConnectionString4 %>" SelectCommand="SELECT friendsid, sendername, recievername, senderid, recieverid FROM friends WHERE (sendername = @sendername) OR (recievername = @recievername)">
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="Label1" Name="sendername" PropertyName="Text" />
                                          <asp:ControlParameter ControlID="Label1" Name="recievername" PropertyName="Text" />
                                      </SelectParameters>
                                  </asp:SqlDataSource>
                                      

                                      
                                  
                                      

                                      
                                  <%--<div class="lv-item media"> 
                                      <div class="lv-avatar pull-left"> <img src="./images/ajit.jpg" alt=""> </div>
                                      <div class="media-body"> 
                                          <div class="lv-title"><b>Ajit Gupta</b><span class="pull-right">10 new</div>
                                          <div class="lv-small"><b>Hello bro whatsup , how are you</b></div>
                                      </div>
                                  </div>
                                  <div class="lv-item media"> 
                                      <div class="lv-avatar pull-left"> <img src="./images/chota.jpg" alt=""> </div>
                                      <div class="media-body"> 
                                          <div class="lv-title"><b>Deepak Yadav</b><span class="pull-right">2 new</span></div>
                                          <div class="lv-small"><b>aur bhai collage kse chale rhai hai </b></div>
                                      </div>
                                  </div><div class="lv-item media"> <div class="lv-avatar pull-left"> <img src="./images/sumit.jpg" alt=""> </div><div class="media-body"> <div class="lv-title">Sumit kumar</div><div class="lv-small">aur suna kya haal hai bhai, aur</div></div></div>
                                  <div class="lv-item media"> <div class="lv-avatar pull-left"> <img src="./images/sega.jpg" alt=""> </div><div class="media-body"> <div class="lv-title">Sage Kalia</div><div class="lv-small">abey kaha chala gya ?? mar gya kya ??</div></div></div>
                                  <div class="lv-item media"> <div class="lv-avatar pull-left"> <img src="./images/gan.jpg" alt=""> </div><div class="media-body"> <div class="lv-title">Gagandeep Singh</div><div class="lv-small">yeh ley eamil address sachin.yadav1212@gmail.com</div></div></div>
                                  <div class="lv-item media"> <div class="lv-avatar pull-left"> <img src="./images/vasu.jpg" alt=""> </div><div class="media-body"> <div class="lv-title">Vasu</div><div class="lv-small">kal se classess start hai koi holiday nahi hai </div></div></div>
                                  <div class="lv-item media"> <div class="lv-avatar pull-left"> <img src="./images/abc.jpg" alt=""> </div><div class="media-body"> <div class="lv-title">Deepu Singh</div><div class="lv-small">okk byee gud night dude kal baaat karte hai </div></div></div>--%>
                              </div>
                          </div>
                         <div class="ms-body"> 
                             <div class="listview lv-message"> 
                                 <div class="lv-header-alt clearfix"> 
                                     <div id="ms-menu-trigger"> 
                                         <div class="line-wrap"> 
                                             <div class="line top">
                                             </div>
                                             <div class="line center"></div>
                                             <div class="line bottom"></div>
                                         </div>
                                     </div>
                                     <div class="lvh-label hidden-xs"> 
                                         <div class="lv-avatar pull-left">
                                              <%--<img src="./images/bhai.jpg" alt="">--%>
                                             <asp:Image ID="Image3" runat="server" />
                                         </div>
                                         <span class="c-black">
                                             <asp:Label ID="Label2" runat="server" Text=""></asp:Label><span style=" margin-left:8px; position:absolute; margin-top:12px;width: 8px;height: 8px;line-height: 8px; border-radius: 50%; background-color:#80d3ab;"></span></span> 
                                     </div>
                                     <%--<ul class="lv-actions actions list-unstyled list-inline"> <li> <a href="#" > <i class="fa fa-check"></i> </a> </li><li> <a href="#" > <i class="fa fa-clock-o"></i> </a> </li><li> <a data-toggle="dropdown" href="#" > <i class="fa fa-list"></i></a> <ul class="dropdown-menu user-detail" role="menu"> <li> <a href="">Latest</a> </li><li> <a href="">Oldest</a> </li></ul> </li><li> <a data-toggle="dropdown" href="#" data-toggle="tooltip" data-placement="left" title="Tooltip on left"><span class="glyphicon glyphicon-trash"></span></a> <ul class="dropdown-menu user-detail" role="menu"> <li> <a href="">Delete Messages</a> </li></ul> </li></ul>--%> 
                                 </div>
                                 <div class="lv-body" id="ms-scrollbar" style="overflow:scroll; overflow-x: hidden; height:520px;">
                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                         <ContentTemplate>
                                             <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                                            chatbox
                                             <asp:DataList ID="DataList2" runat="server">
                                                 <ItemTemplate>  
                                                     <div class="lv-item media"> 
                                                         <div class="lv-avatar pull-left"> 
                                                             <%--<img src="./images/bhai.jpg" alt="">--%>
                                                             

                                                         </div>
                                                         <div class="media-body"> 
                                                             <div class="ms-item"> 
                                                                 <span class="glyphicon glyphicon-triangle-left" style="color:#000000;"></span> 
                                                                 <asp:Label ID="Message" runat="server" Text='<%# Bind("Message") %>'></asp:Label>
                                                             </div>
                                                             <small class="ms-date"><span class="glyphicon glyphicon-time"></span>&nbsp; <asp:Label ID="Date" runat="server" Text='<%# Bind("Time") %>'></asp:Label></small> 
                                                         </div>
                                                     </div>
                                                   </ItemTemplate>
                                              </asp:DataList>
                                         </ContentTemplate>
                                     </asp:UpdatePanel>
                                     <%--<div class="lv-item media right"> <div class="lv-avatar pull-right"> <img src="./images/avatar.jpg" alt=""> </div><div class="media-body"> <div class="ms-item"> We started this site with clear mission that we want to deliver complete details knowledge of Programming to our audience. We are sharing this knowledge in all areas that you can see in our site. </div><small class="ms-date"><span class="glyphicon glyphicon-time"></span>&nbsp; 05/10/2015 at 09:30</small> </div></div>
                                     <div class="lv-item media"> <div class="lv-avatar pull-left"> <img src="./images/bhai.jpg" alt=""> </div><div class="media-body"> <div class="ms-item"> It's gives the power to synthesis anything anywhere you want to. Its the ultimate tool to solve any problem. And we help you excel in that by working with you. </div><small class="ms-date"><span class="glyphicon glyphicon-time"></span>&nbsp; 20/02/2015 at 09:33</small> </div></div>
                                     <div class="lv-item media right"> <div class="lv-avatar pull-right"> <img src="./images/avatar.jpg" alt=""> </div><div class="media-body"> <div class="ms-item"> The basic essence of life is to learn, explore and synthesis. We provide you with the tools to make your dreams come true.Our website is totally for free and available 24/7 and does not consume your data packs and works like a charm on the supersonic lovely internet. </div><small class="ms-date"><span class="glyphicon glyphicon-time"></span>&nbsp; 05/10/2015 at 10:10</small> </div></div>
                                     <div class="lv-item media"> <div class="lv-avatar pull-left"> <img src="./images/bhai.jpg" alt=""> </div><div class="media-body"> <div class="ms-item"> Acadnote a world class website is processing surveys for every student who wants to do something new and different in the field of academics. so it is a right place for every student to share their opinions about their present academics so this website can provide every single student requirements and it is possible for us to do if every student explains about their academics requirements. Last but not the least tell the needs and collect your study materials which we will provide to you. </div><small class="ms-date"><span class="glyphicon glyphicon-time"></span>&nbsp; 05/10/2015 at 10:24</small> </div></div>--%>
                                 </div>
                                 <div class="clearfix"></div>
                                 <div class="lv-footer ms-reply"> 
                                     <%--<form runat="server">--%>
                                     <%--<textarea rows="10" placeholder="Write messages..."></textarea>--%>
                                     <asp:TextBox CssClass="textarea" ID="TextBox1"  placeholder="Write messages..." runat="server"></asp:TextBox>
                                     <%--<button class=""><span class="glyphicon glyphicon-send"></span></button>--%>
                                     <%--<asp:LinkButton ID="Button1" CssClass="button" runat="server" ><span class="glyphicon glyphicon-send"></span></asp:LinkButton>--%>
                                         <button runat="server" class="button" onserverclick="Unnamed_ServerClick" height="" width=""><span style="font-size:medium;text-align:center;" >Send</span>
                                          <!--  <span class="glyphicon glyphicon-send"></span>-->
                                        </button>
                                   

                                     <%--</form>--%>
                                 </div>
                                   <asp:Label runat="server" ID="Label3" ForeColor="Red" Visible="False" style="margin:0 auto;padding:10px;"></asp:Label>
                             </div>
                         </div>
                     </div>
                 </div>
             </div><%--</div></div></section>--%> 
         </form>
         <script type="text/javascript" src="./css/jquery.js"></script> 
         <script src="./css/bootstrap.min.js"></script> 
          <script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
     </body>
 </html>
