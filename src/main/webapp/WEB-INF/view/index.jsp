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

      <!-- font -->
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
   </head>
   <!-- body -->
   <body class="main-layout home_page">
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
                           <div class="logo"> <a href="index"><img src="static/images/logo.png" alt="#"></a> </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <div class="menu-area">
                        <div class="limit-box">
                           <nav class="main-menu">
                              <ul class="menu-area-main">
                                 <li class="active"> <a href="index">首页</a> </li>
                                 <li> <a href="about">关于我们</a> </li>
                                 <li><a href="brand_show">品牌展示</a></li>
                                 <li><a href="brand_join">品牌加盟</a></li>
                                 <li><a href="college_stall">高校档口</a></li>
                                 <!-- <li class="mean-last"> <a href="#"><img src="images/search_icon.png" alt="#" /></a> </li> -->
                                 <!-- <li class="mean-last"> <a href="#"><img src="images/top-icon.png" alt="#" /></a> </li> -->
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
      <section class="slider_section">
         <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <a href="brand_duojiaobanfan"><img class="first-slide" src="static/images/banner2.jpg" alt="First slide"></a>
                  <div class="container">
                     <div class="carousel-caption relative">
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <a href="brand_xiaoyukuaikao"><img class="second-slide" src="static/images/banner.jpg" alt="Second slide"></a>
                  <div class="container">
                     <div class="carousel-caption relative">
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <a href="brand_dawanmixian"><img class="third-slide" src="static/images/banner3.jpg" alt="Third slide"></a>
                  <div class="container">
                     <div class="carousel-caption relative">
                     </div>
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
            </a>
         </div>
      </section>
      <!-- gmenu -->
      <div class="container-fluid g_menu">
         <div class="row">
            <!-- 公告公示 -->
            <div class="col-lg-8 col-md-8 col-xs-12 col-xl-8 offset-lg-2 offset-md-2 offset-xl-2">
               <div class="gg-title">
                  <a href="#" class="a-title">公告公示 <i style="font-size: 16px; font-weight: 100;">  更多</i></a>
               </div>
               <ul class="gg-list">
	               <c:forEach items="${notices}" var="notice">
	               <li class="gg-list-li">
	               		<a href="#">${notice.title}</a>
                     	<span class="gg-time">${notice.modified_time }</span>
	               </li>
	               </c:forEach>
               </ul>
            </div>
         </div>
      </div>

      <!-- Library -->
      <div class="Library">
         <div class="container">
            <div class="row">
               <div class="col-md-10 offset-md-1">
                  <div class="titlepage">
                     <h2>合作<strong class="black">伙伴 </strong></h2>
                     <span>鑫欣汇企业合作伙伴遍布全国各地, 云南、四川、贵州、重庆、河北、陕西、广西、山东、湖北等地区高校均有合作<br>我们与各大品牌合作在各地开设店面铺门</span> 
                  </div>
               </div>
            </div>
         </div>
         <div class="bg">
            <div class="container">
               <div class="row">
                  <div class="col-md-10 offset-md-1">
                     <div class="Library-box">
                        <figure><img src="static/images/cps.jpg" alt="#"/></figure>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="read-more">
                     <a href="#">了解更多</a>
                  </div>
               </div>
            </div>
         </div> -->
      </div>
      <!-- end Library -->
      <!--Books -->
      <div class="Books">
         <div class="container">
            <div class="row">
               <div class="col-md-10 offset-md-1">
                  <div class="titlepage">
                     <h2>品牌 <strong class="black">展示 </strong></h2>
                     <span>特色烤鱼饭, 在云贵川渝已开30多家店铺, 完整的运营体系和vi识别度<br></span> 
                     <span>大碗米线, 新新品牌, 市场已经开三家联营合作店铺, 营业额逐步稳健提升<br></span> 
                     <span>大碗米线, 新新品牌, 市场已经开三家联营合作店铺, 营业额逐步稳健提升<br></span> 
                  </div>
               </div>
            </div>
            <div class="row box">
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                  <div class="book-box">
                     <figure><img src="static/images/vi2.png" alt="img"/></figure>
                  </div>
               </div>
               <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                  <div class="book-box">
                     <figure><img src="static/images/vi1.png" alt="img"/></figure>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                  <div class="book-box">
                     <figure><img src="static/images/vi3.png" alt="img"/></figure>
                  </div>
               </div>
               <!-- <div class="col-md-6 offset-md-3">
                  <p>小鱼快烤定位于川渝特色烤鱼，采用”先炸后烤“的独特做法，融合了烤、炸两种烹饪工艺的精华。迎合市场潮流，不断创新产品，打造”一人食烤鱼饭“的精致特色，肉质紧实，滋味醇厚，一人一锅的方式大受欢迎，满足当代年轻人的生活节奏以及猎奇图新的就餐体验，是适应团餐和社餐的优质品牌</p>
               </div> -->
            </div>
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="read-more">
                        <a href="brand_show">了解更多</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end Books -->
      <!-- Contact -->
      <div class="Contact">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage3">
                     <h2>商业合作</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                  <form>
                     <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                           <input id="index_name" class="form-control" placeholder="称呼" type="Name">
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                           <input id="index_phone" class="form-control" placeholder="联系方式" type="Phone Number">
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                           <input id="index_email" class="form-control" placeholder="电子邮件" type="Email">
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                           <textarea id="index_content" class="textarea" placeholder="信息">您的需求在这里提!</textarea>
                        </div>
                     </div>
                  </form>
               </div>
               <button class="send-btn" onclick="openCoops()">开启合作!</button>
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
      <script src="static/js/rk.js" type="text/javascript"></script>
	  <style>
		.copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
		</style>
   </body>
</html>