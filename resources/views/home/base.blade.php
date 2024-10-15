
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- SEO Meta description -->
    <meta name="description"
          content="Bitcoin Investment">
    <meta name="author" content="ThemeTags">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
    <meta property="og:site_name" content=""/> <!-- website name -->
    <meta property="og:site" content=""/> <!-- website link -->
    <meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
    <meta property="og:description" content=""/> <!-- description shown in the actual shared post -->
    <meta property="og:image" content=""/> <!-- image link, make sure it's jpg -->
    <meta property="og:url" content=""/> <!-- where do you want your post to link to -->
    <meta property="og:type" content="article"/>
    <meta name="theme-color" content="#000000">
    <!--title-->
    <title> {{$siteName}} | {{$pageName}}</title>

    <!--favicon icon-->
    <link rel="icon" href="{{asset('home/images/'.$web->logo)}}"  sizes="16x16">

    <!--google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700%7COpen+Sans:400,600&amp;display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--Bootstrap css-->
    <link rel="stylesheet" href="{{asset('home/css/bootstrap.min.css')}}">
    <!--Magnific popup css-->
    <link rel="stylesheet" href="{{asset('home/css/magnific-popup.css')}}">
    <!--Themify icon css-->
    <link rel="stylesheet" href="{{asset('home/css/themify-icons.css')}}">
    <!--Fontawesome icon css-->
    <link rel="stylesheet" href="{{asset('home/css/all.min.css')}}">
    <!--animated css-->
    <link rel="stylesheet" href="{{asset('home/css/animate.min.css')}}">
    <!--ytplayer css-->
    <link rel="stylesheet" href="{{asset('home/css/jquery.mb.YTPlayer.min.css')}}">
    <!--Owl carousel css-->
    <link rel="stylesheet" href="{{asset('home/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('home/css/owl.theme.default.min.css')}}">
    <!--custom css-->
    <link rel="stylesheet" href="{{asset('home/css/style.css')}}">
    <!--responsive css-->
    <link rel="stylesheet" href="{{asset('home/css/responsive.css')}}">
    <link rel="stylesheet" href="{{asset('home/fonts/themify-icons.css')}}">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
          integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'><link rel="stylesheet" href="style">
    <style>
        .lead {
            font-size: 1rem;
            font-weight: 300;
        }
        span{

        }
        .btn-custom {
            color: #000000;
            font-size: 18px;
            border: 1px solid #000000;
        }
        .btn-custom:hover {
            color: #ffffff;
            border: 1px solid #ffffff;
        }
        #pricing-table {
            padding-top: 50px;
        }
        .pricing {
            margin: 0;
            padding: 0;
            font-family: 'Robot', sans-serif;
        }
        .pricing .pricing-table {
            padding-bottom: 30px;
        }
        .pricing .pricing-table .pricing-header {
            position: relative;
            background: #0e1746;
            padding: 22px 22px;
            text-align: center;
            border-top-right-radius: 8px;
            border-top-left-radius: 8px;
        }
        .pricing .pricing-table .pricing-header .pricing-title {
            color: #ffffff;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-size: 24px;
            text-align: center;
            font-weight: 700;
        }
        .pricing .pricing-table .pricing-header .pricing-rate {
            font-size: 70px;
            font-weight: 700;
            color: #ffffff;
            position: relative;
            text-align: center;
        }
        .pricing .pricing-table .pricing-header .pricing-rate sup {
            font-size: 24px;
            position: relative;
            top: -30px;
            color: #000000;
        }
        .pricing .pricing-table .pricing-header .pricing-rate span {
            font-size: 16px;
            color: #000000;
            text-transform: uppercase;
        }
        .pricing .pricing-list {
            padding: 20px 0 40px 0;
            border: 1px solid #0e1746;
        }
        .pricing .pricing-list ul {
            padding: 0px;
            display: table;
            margin: 0px auto;
        }
        .pricing .pricing-list ul li {
            list-style: none;
            border-bottom: 1px solid #EAECEB;
            color: #bdc3c7;
            font-size: 16px;
            line-height: 42px;
        }
        .pricing .pricing-list ul li:last-child {
            border: none;
        }
        .pricing .pricing-list ul li i {
            margin-right: 12px;
            color: #fff;
        }
        .pricing .pricing-list ul li span {
            color: #fff;
            font-weight: 700;
        }




        .cah2 {
            color: #0998ec;
            font-size: 20px;
            font-weight: 800;
            text-align: center;
            text-transform: uppercase;
            position: relative;
        }
        .cah2::after {
            content: "";
            width: 100px;
            position: absolute;
            margin: 0 auto;
            height: 4px;
            border-radius: 1px;
            background: #0998ec;
            left: 0;
            right: 0;
            bottom: -20px;
        }
        .carousel_test {
            margin: 50px auto;
            padding: 0 10px;
        }
        .carousel_test .item {
            color: #ffffff;
            overflow: hidden;
            min-height: 120px;
            font-size: 13px;
        }
        .carousel_test .media img {
            width: 40px;
            height: 40px;
            display: block;
            border-radius: 50%;
        }
        .carousel_test .testimonial {
            padding: 0 10px 0 10px ;
            position: relative;
        }
        .carousel_test .overview b {
            text-transform: uppercase;
            color: #0998ec;
        }

        @media screen and (max-width: 992px) {
            .me_table::-webkit-scrollbar {
                display: none !important;
                overflow-x: scroll;
            }

            .rem-home{
                padding: 9rem 0 5rem 0;
            }

            @media screen and (max-width: 992px) {
                .rem-home{
                    padding: 6rem 0 5rem 0;
                }
            }

            /* Hide scrollbar for IE and Edge */
            .me-table {
                -ms-overflow-style: none !important;
                overflow-x: scroll;
            }
        }

        .me_icon {
            margin-top: 10px;
            color: #fff;
        }

        .token_rtinfo {
            color: #fff;
            border-radius: 10px;
            box-shadow: 0 1px 5px rgba(0, 0, 0, 0.2);
            margin-top: -80px;
            padding: 40px 15px;
            background-color: rgba(255,255,255,0.10);
            box-shadow: none !important;
        }

        .token_rt_value {
            padding: 0 25px;
        }

        .me_big{
            font-size: 1rem !important;
            line-height: normal !important;
        }

        .tradingview-widget-copyright{
            display: none !important;
        }

        .badge {
            border-radius: 50px;
            padding: 0.2rem 1rem;
            color: #fff;
            text-align: center;
        }

        .pricing-rate sup {
            font-size: 24px;
            position: relative;
            left: -20px;
            top: -30px;
        }

        .pricing-rate span {
            font-size: 12px;
            color: #707070;
            text-transform: uppercase;
            right: -600px;
        }

        .pricing-rate {
            font-size: 70px;
            font-weight: 700;
            color: #FCD535;
            position: relative;
            text-align: center;
        }
    </style>
</head>
<body>

<header class="header">
    <!--start navbar-->
    <nav class="navbar navbar-expand-lg fixed-top bg-transparent">
        <div class="container">
            <a class="navbar-brand" href="{{url('/')}}">
                <img src="{{asset('home/images/'.$web->logo)}}" style="width: 100px;" alt="logo" class="img-fluid"/>
            </a>
            <nav class="navbar navbar-dark bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </nav>
            <div class="collapse navbar-collapse h-auto" id="navbarToggleExternalContent">
                <ul class="navbar-nav ml-auto menu">

                    <li><a  href="{{url('/')}}">Home</a></li>
                    <li><a  href="{{url('about')}}">About Us</a></li>
                    <li><a href="#" class="dropdown-toggle"> Services</a>
                        <ul class="sub-menu">
                            <li><a href="{{url('services')}}">Stocks</a></li>
                            <li><a href="{{url('services')}}">Oil and Gas</a></li>
                            <li><a href="{{url('services')}}">Real Estate</a></li>
                            <li><a href="{{url('services')}}">Retirement and Insurance Services</a></li>
                            <li><a href="{{url('services')}}">Gold</a></li>
                        </ul>
                    </li>
                    <li><a  href="{{url('estate')}}">Real Estate Properties</a></li>
                    <li><a href="{{url('plans')}}">Investment Plans</a></li>
                    <li><a href="{{url('faq')}}">FAQs</a></li>
                    <li><a href="{{url('contact')}}">Get Support</a></li>
                    <li><a style="opacity: 1;" href="{{route('register')}}" class="btn btn-sm btn-success p-2 mb-2">Create New Account</a></li>
                    <li><a style="opacity: 1;" href="{{route('login')}}" class="btn outline-white-btn p-2">Go to your Account</a></li>

                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="main">

    @yield('content')

</div>

<footer class="footer-section">
    <!--footer top start-->
    <div class="footer-top gradient-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="row footer-top-wrap">
                        <div class="col-md-3 col-sm-6">
                            <div class="footer-nav-wrap text-white">
                                <h4 class="text-white">QUICK LINKS</h4>
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{route('register')}}">Sign Up</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{route('login')}}">Login</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('plans')}}">Investment Plans</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('buy-btc')}}">Where to Buy Bitcoin</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('estate')}}">Real estate properties</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="footer-nav-wrap text-white">
                                <h4 class="text-white">COMPANY</h4>
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('/')}}">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('about')}}">About Us</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('services')}}">Our Services</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('faq')}}">FAQs</a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="footer-nav-wrap text-white">
                                <h4 class="text-white">LEGAL</h4>
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('terms')}}">Legal Information</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('privacy')}}">Privacy Policy</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('contact')}}">Report Abuse</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('terms')}}">Terms of Service</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="footer-nav-wrap text-white">
                                <h4 class="text-white">SUPPORT</h4>
                                <ul class="nav flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('contact')}}">Contact</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('about')}}">Knowledge Base</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('faq')}}">FAQs</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{url('/')}}">System Status</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="row footer-top-wrap">
                        <div class="col-12">
                            <div class="footer-nav-wrap text-white">
                                <h4 class="text-white">GET IN TOUCH</h4>
                                <ul class="get-in-touch-list">
                                    <li class="d-flex align-items-center py-2">
                                        <span class="fas fa-map-marker-alt mr-2"></span>
                                        {{$web->address}}
                                    </li>
                                    <li class="d-flex align-items-center py-2">
                                        <span class="fas fa-envelope mr-2"></span>
                                        {{$web->email}}
                                    </li>
                                    <li class="d-flex align-items-center py-2">
                                        <span class="fas fa-phone-alt mr-2"></span>
                                        {{$web->phone}}
                                    </li>
                                </ul>
                            </div>
                        </div>
                        </div>
                        <div class="footer-nav-wrap text-white">
                            <h4 class="text-white">Certification</h4>
                                <ul class="get-in-touch-list">
                                    <li class="d-flex align-items-center py-2">
                                        <a href="{{asset('home/extrochaincertificate.jpeg')}}">
                                    <img src="{{asset('home/extrochaincertificate.jpeg')}}" style="width:100px;"/>
                                </a>
                                    </li>
                                </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer top end-->

    <!--footer copyright start-->
    <div class="footer-bottom gray-light-bg py-2 mb-5">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-md-5 col-lg-5">
                    <p class="copyright-text pb-0 mb-0">Copyrights © {{date('Y')}}. All
                        rights reserved
                        <a href="{{url('/')}}" target="_blank">{{$siteName}}</a></p>
                </div>

            </div>
        </div>
    </div>
    <!--footer copyright end-->
</footer>
<!--footer section end-->

<!--bottom to top button start-->
<button class="scroll-top scroll-to-target" data-target="html">
    <span class="ti-angle-up"></span>
</button>
<!--bottom to top button end-->

<div style="position: fixed; left: 0; bottom: 0; z-index: 1; width: 100%;">
    <div style="width: 100%; background-color: #FFFFFF; overflow:hidden; box-sizing: border-box; text-align: right; line-height:14px; font-size: 12px; box-sizing:content-box; font-feature-settings: normal; text-size-adjust: 100%; padding:1px;padding: 0px; margin: 0px;">
        <div style="height:40px;">
            <iframe src="https://widget.coinlib.io/widget?type=horizontal_v2&amp;theme=light&amp;pref_coin_id=1505&amp;invert_hover=" width="100%" height="36" scrolling="auto" marginwidth="0" marginheight="0" frameborder="0" border="0" style="border:0;margin:0;padding:0;">
            </iframe>
        </div>
    </div>
</div>


<!--jQuery-->
<script src="{{asset('home/js/jquery-3.4.1.min.js')}}"></script>
<!--Popper js-->
<script src="{{asset('home/js/popper.min.js')}}"></script>
<!--Bootstrap js-->
<script src="{{asset('home/js/bootstrap.min.js')}}"></script>
<!--Magnific popup js-->
<script src="{{asset('home/js/jquery.magnific-popup.min.js')}}"></script>
<!--jquery easing js-->
<script src="{{asset('home/js/jquery.easing.min.js')}}"></script>
<!--jquery ytplayer js-->
<script src="{{asset('home/js/jquery.mb.YTPlayer.min.js')}}"></script>
<!--Isotope filter js-->
<script src="{{asset('home/js/mixitup.min.js')}}"></script>
<!--wow js-->
<script src="{{asset('home/js/wow.min.js')}}"></script>
<!--owl carousel js-->
<script src="{{asset('home/js/owl.carousel.min.js')}}"></script>
<!--countdown js-->
<script src="{{asset('home/js/jquery.countdown.min.js')}}"></script>
<!--custom js-->
<script src="{{asset('home/js/scripts.js')}}"></script>


<script>
    function showTime(){
        var date = new Date();
        var h = date.getHours(); // 0 - 23
        var m = date.getMinutes(); // 0 - 59
        var s = date.getSeconds(); // 0 - 59
        var session = "AM";

        if(h === 0){
            h = 12;
        }

        if(h > 12){
            h = h - 12;
            session = "PM";
        }

        h = (h < 10) ? "0" + h : h;
        m = (m < 10) ? "0" + m : m;
        s = (s < 10) ? "0" + s : s;

        var time = h + ":" + m + ":" + s + " " + session;
        document.getElementById("MyClockDisplay").innerText = time;
        document.getElementById("MyClockDisplay").textContent = time;

        setTimeout(showTime, 1000);

    }

    showTime();
</script>
<!-- Google language start -->
<style>

    #google_translate_element {
        z-index: 9999999;
        position: fixed;
        bottom: 25px;
        left: 15px;
    }

    .goog-te-gadget {
        font-family: Roboto, "Open Sans", sans-serif !important;
        text-transform: uppercase;
    }
    .goog-te-gadget-simple
    {
        padding: 0px !important;
        line-height: 1.428571429;
        color: white;
        vertical-align: middle;
        background-color: black;
        border: 1px solid #a5a5a599;
        border-radius: 4px;
        float: right;
        margin-top: -4px;
        z-index: 999999;
    }
    .goog-te-banner-frame.skiptranslate
    {
        display: none !important;
        color: white;
    }
    .goog-te-gadget-icon
    {
        background: none !important;
        display: none;
        color: white;
    }
    .goog-te-gadget-simple .goog-te-menu-value
    {
        font-size: 12px;
        color: white;
        font-family: 'Open Sans' , sans-serif;
    }
</style>
<div id="google_translate_element"></div>
<script type="text/javascript">
    window.onload = function googleTranslateElementInit() {
        new google.translate.TranslateElement({ pageLanguage: 'en' }, 'google_translate_element');
    }
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<!-- start popup massage -->
<div class="notifier" style="display: none;">
    <div class="txt" style="color:black;">While you are waiting,someone from <b></b> just traded with <a href="javascript:void(0);" onclick="javascript:void(0);"></a></div>
</div>
<style>
    .notifier{
        border-radius: 7px;
        position: fixed;
        z-index: 90;
        bottom: 80px;
        right: 50px;
        background: #fff;
        padding: 15px 40px;
        box-shadow: 0px 5px 13px 0px rgba(0,0,0,.3);
    }
    .notifier a {
        font-weight: 700;
        display: block;
        color:#0080FF;
    }
    .notifier a, .notifier a:active {
        transition: all .2s ease;
        color:#0080FF;
    }
</style>
<script data-cfasync="false" src="#"></script><script type="text/javascript">
    var listCountries = ['Germany', 'South Africa', 'Spain', 'Russia', 'Italy', 'South Africa',
        'Italy', 'South Africa', 'United States', 'Egypt', 'Kenya', 'Uganda',
        'South Africa', 'Angola', 'Ghana', 'United Kingdom', 'Senegal',
        "Togo","Seychelles","United States","England","Germany","Germany","United States","Switzerland",
        "Austria","Austria","Austria","Australia","Australia","Australia","Russia","Russia",
        "United States","United Kingdom","Spain","Spain","India","England","Italy",'Kenya', 'Uganda',
        'South Africa', 'Angola','Tanzania', 'Tanzania',
        'Tanzania', 'Tanzania',"Kenya","Kenya","Kenya",
    ];
    var listPlans = ['$500','$50','$1,000','$100','$200','$3000','$400', '$360',
        '$700', '$60',"$500","$300","$1,000","$128"];
    interval = Math.floor(Math.random() * (40000 - 8000 + 1) + 8000);
    var run = setInterval(request, interval);

    function request() {
        clearInterval(run);
        interval = Math.floor(Math.random() * (40000 - 8000 + 1) + 8000);
        var country = listCountries[Math.floor(Math.random() * listCountries.length)];
        var plan = listPlans[Math.floor(Math.random() * listPlans.length)];
        var msg = 'While you are still contemplating ,an investor from <b>' + country + '</b> ' +
            'just traded with <a href="javascript:void(0);" onclick="javascript:void(0);">' + plan + ' .</a>';
        $(".notifier .txt").html(msg);
        $(".notifier").stop(true).fadeIn(300);
        window.setTimeout(function() {
            $(".notifier").stop(true).fadeOut(300);
        }, 6000);
        run = setInterval(request, interval);
    }
</script>
<!-- end popup massage -->

</body>
</html>
