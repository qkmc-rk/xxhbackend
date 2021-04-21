<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-cn">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>鑫欣汇餐饮</title>
      <meta name="keywords" content="鑫欣汇,鑫欣汇企业,鑫欣汇餐饮,成都鑫欣汇,成都鑫欣汇餐饮管理有限公司">
      <meta name="description" content="成都鑫欣汇餐饮管理有限公司注册资金100万元人民币，经营区域涉及国内各地高校，围绕着顾客满意的目标，向餐饮创业者提供地盘, 管理, 经营等多种服务.">
      <meta name="author" content="张银鑫">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="static/css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="static/css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="static/css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="static/images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="static/css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="static/images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header">
            <div class="container">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                        <div class="center-desk">
                           <div class="logo"> <a href="index.html"><img src="static/images/logo.png" alt="#"></a> </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <div class="menu-area">
                        <div class="limit-box">
                           <nav class="main-menu">
                              <ul class="menu-area-main">
                                 <li> <a href="index">首页</a> </li>
                                 <li> <a href="about">关于我们</a> </li>
                                 <li><a href="brand_show">品牌展示</a></li>
                                 <li class="active"><a href="brand_join">品牌加盟</a></li>
                                 <li><a href="college_stall">高校档口</a></li>
                              </ul>
                           </nav>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- end header inner -->
      </header>
      <!-- end header -->
      <div class="about-bg">
         <div class="container">
            <div class="row">
               <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                  <div class="abouttitle">
                     <h2>品牌 加盟</h2>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- Contact -->
      <!-- Contact -->
      <div class="Contact" style="margin-top: 0%;">
         <div class="container">
            <div class="row">
               <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                  <form>
                     <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                           <input style="margin-bottom: 20px;" class="form-control" placeholder="您的称呼" id="name" name="name" type="text">
                        </div>
                         <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                           <input style="margin-bottom: 20px;" class="form-control" placeholder="您的电子邮件" id="email" name="email" type="Email">
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                           <input style="margin-bottom: 20px;" class="form-control" placeholder="您的电话号码" id="phone" name="phone_nu" type="text">
                        </div>
                       <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                           <!-- <input class="form-control" placeholder="合作项目" name="subject" type="text"> -->
                        </div>
                        <div class="col-sm-12">
                           <textarea class="textarea" name="message" id="content" placeholder="商谈项目描述">商谈项目描述</textarea>
                        </div>
                     </div>
                  </form>
               </div>
               <button class="send-btn" onclick="openCorp()">开启合作</button>
            </div>
         </div>
      </div>
      <!-- end Contact -->
      <!-- footer -->
      <footer>
         <div class="footer">
            <div class="container">
               <div class="row pdn-top-30">
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                     <div class="Follow">
                        <h3> 关注我们 </h3>
                     </div>
                     <ul class="location_icon">
                        <li class="qrcode"> <img style="height: 100%;" src="static/images/qrcode.jpg"></li>
                     </ul>
                  </div>
                  <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                     <div class="Follow">
                        <h3></h3>
                     </div>
                     <input id="index_newsletter" class="Newsletter" placeholder="输入邮件地址订阅我们最新的消息!" type="Enter your email">
                     <button class="Subscribe" onclick="subscription()">订阅</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="copyright">
            <div class="container">
               <p>Copyright &copy; 2021.成都鑫欣汇餐饮管理有限公司 All rights reserved.</p>
               <p>备案号: 蜀ICP20199991</p>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="static/js/jquery.min.js"></script>
      <script src="static/js/popper.min.js"></script>
      <script src="static/js/bootstrap.bundle.min.js"></script>
      <script src="static/js/jquery-3.0.0.min.js"></script>
      <script src="static/js/plugin.js"></script>
      <!-- sidebar -->
      <script src="static/js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="static/js/custom.js"></script>
      <script src="static/js/subscription.js"></script>
      <script src="static/js/brand_join.js"></script>
   </body>
</html>