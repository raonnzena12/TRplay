<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
<style>
#header{
	border:1px solid #ddd;
	margin-bottom:20px;
	}
#header .navbar{
	border-radius:0;
	margin-bottom:0;
	border:none;
    font-family: 'Open Sans Condensed', sans-serif, sans-serif;

}

#header .img-responsive {
    width: 100%;
    height: auto;
}

#header .navbar > li >a{

}
#header .navbar-header{
	}
	
    #header .navbar-brand{
    width:160px;
    height:160px;
    float:left;
    padding:0;
    margin-top:-130px;
    overflow:hidden;
    border:3px solid #eee;
    margin-left:15px;
    background:#333;
    text-align:center;
    line-height:160px;
    color:#fff !important;
    font-size:2em;
    -webkit-transition:  all 0.3s ease-in-out;
  	-moz-transition: all 0.3s ease-in-out;
  	-o-transition:  all 0.3s ease-in-out;
  	transition: all 0.3s ease-in-out ;

	}
	
	
    #header .site-name{
	color:#fff;
	font-size:2.4em;
	float:left;
	margin-top:-95px !important;
	margin-left:15px;
        font-family: 'Open Sans Condensed', sans-serif, sans-serif;

	}	
    #header .site-description{
	color:#fff;
	font-size:1.3em;
	float:left;
	margin-top:-50px !important;
	margin-left:15px;
	}
	
    #header .main-menu{
	position:absolute;
	left:190px;
	}
	
    #header .slider,#header  .carousel{
	max-height:360px;
	overflow:hidden;
	}
	
    #header .carousel-control .fa-angle-left,
    #header .carousel-control .fa-angle-right {
        position: absolute;
        top: 50%;
        font-size:2em;
        z-index: 5;
        display: inline-block;
}

#header .carousel-inner img {
    width: 100%;
}

#header .twitter {
    position: absolute;
    right: 20px;
}

#header .carousel-control{
	background-color:transparent;
	background-image:none !important;
	}
	
    #header .carousel-control:hover,
    #header .carousel-control:focus {
  color: #fff;
  text-decoration: none;
  background-color:transparent !important;
  background-image:none !important;
  outline: 0;
}
	
@media (max-width: 768px) {
    #header .navbar-brand{
    max-width: 100px;
	max-height:100px;
	float:left;
	margin-top:-65px;
	margin-left:15px;
	-webkit-transition:  all 0.3s ease-in-out;
  	-moz-transition: all 0.3s ease-in-out;
  	-o-transition:  all 0.3s ease-in-out;
  	transition: all 0.3s ease-in-out ;
}
#header .navbar{
	border-radius:0;
	margin-bottom:0;
	border:none;
	}
	
    #header .main-menu{
	left:0;
	position:relative;
	}


}

@media (max-width: 490px) {
	#header .site-name{
	color:#fff;
	font-size:1.5em;
	float:left;
	line-height:20px;
	margin-top:-100px !important;
	margin-left:125px;
	}	
    #header .site-description{
	color:#fff;
	font-size:1.3em;
	float:left;
	margin-top:-80px !important;
	margin-left:125px;
	}
}

</style>
        <div class="wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                        <header id="header">
        
          <div class="slider">
          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img src="http://placehold.it/1200x400/F34336/F34336&text=WORDPRESS THEME DEVELOPER">
            </div>
          </div>
        
          <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          </a>
        </div>
                            </div><!--slider-->
                            <nav class="navbar navbar-expand-sm ">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
        
                                  <a class="navbar-brand" href="#"><img class="img-responsive" src="/trpg/resources/images/default/no-profile.png"></a>
                                  <span class="site-name"><b>${ loginUser.memId }</b>&nbsp;<a href="/trpg/${ loginUser.memId }/editProfile.tr"><i class="fa fa-cog editProfile" style="font-size: 25px;"></i></a></span>
                                  <span class="site-description">worpress theme developer</span>
                                </div>
                            
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="navbar-collapse" id="mainNav" >
                                  <ul class="nav main-menu navbar-nav ml-3 mr-auto">
                                    <li class="nav-item"><a href="#"><i class="fa fa-home"></i>UserMain</a></li>&nbsp;
                                    <li class="nav-item"><a href="#">Link</a></li>&nbsp;
                                    <li class="nav-item"><a href="#">Link</a></li>
                                  </ul>
                                  
                                    <span class="nav-item twitter" align="right"><a href="#"><i class="fa fa-twitter"></i></a></span>
                                </div><!-- /.navbar-collapse -->
                            </nav>
                            
                        </header><!--/#HEADER-->
