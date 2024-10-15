@extends('home.base')
@section('content')

    <section class="hero-equal-height pt-165 pb-100 gradient-overly-right-color"
             style="background: url('{{asset('home/img/7.jpg')}}')no-repeat center center / cover">
        <div class="container">
            <div class='row'>


            </div>
            <div class="row">
                <div class="owl-carousel owl-theme hero-content-slider custom-dot custom-dot-2">
                    <div class="item">
                        <div class="col-md-8 col-lg-7 col-12">
                            <div class="hero-content-wrap text-white">
                                <h1 class="text-white">Best Real Estate And Project Management Company</p>
                                    <p class="lead">We offer the best rates developed by the financial department of our company and present you reasonable interest rates that our company will be guaranteed to pay investors</p>
                                    <div class="action-btns mt-4">
                                        <a href="{{route('register')}}" class="btn secondary-solid-btn mr-3">Sign Up</a>
                                        <a href="{{route('login')}}" class="btn outline-white-btn">Login</a>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="col-md-8 col-lg-7 col-12">
                            <div class="hero-content-wrap text-white">
                                
                                <h1 class="text-white">Confidence To Live Boldly.
                                    And Retire On Your Terms.</h1>
                                <p class="lead">We advocate for what is most important to you,
                                    financial education, meticulous planning
                                    and clear guidance to a secured financial future.</p>
                                <div class="action-btns mt-3">
                                    <a href="about" class="btn btn-block secondary-solid-btn">Know More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="promo-section pt-100">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-4">
                    <div class="single-promo-block p-3 rounded d-flex justify-content-between">
                        <div class="promo-block-icon mr-4">
                            <span class="fas fa-brain icon-md color-primary"></span>
                        </div>
                        <div class="promo-block-content ">
                            <h5>STEADY GROWTH</h5>
                            <p>{{$siteName}} is a safe and secured option, which ensures steady growth on your investments with daily
                                returns on an ongoing basis with no hustle and instantly</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="single-promo-block p-3 rounded d-flex justify-content-between">
                        <div class="promo-block-icon mr-4">
                            <span class="fas fa-bezier-curve icon-md color-primary"></span>
                        </div>
                        <div class="promo-block-content">
                            <h5>RELIABLE SYSTEM</h5>
                            <p>{{$siteName}} is backed by team of professionals, experts and specialist of trading market providing 24/7
                                guidance and support to the users ensuring a reliable system.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="single-promo-block p-3 rounded d-flex justify-content-between">
                        <div class="promo-block-icon mr-4">
                            <span class="fas fa-life-ring icon-md color-primary"></span>
                        </div>
                        <div class="promo-block-content">
                            <h5>MAXIMUM EFFICIENCY</h5>
                            <p>The most advanced intelligent monitoring technology with high level of professionalism of
                                {{$siteName}} provides safe returns on your investments ensuring maximum efficiency.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-us-section ptb-100">
        <div class="container">
            <div class="row justify-content-around">
                <div class="col-md-12 col-lg-6">
                    <div class="about-img-wrap">
                        <img src="{{asset('home/img/estate/7.jpg')}}" alt="video" class="img-fluid rounded shadow-sm">

                    </div>
                </div>
                <div class="col-md-12 col-lg-5">
                    <div class="about-content-right mb-md-4 mb-lg-0">
                        <h2>About Us</h2>
                        <p>{{$siteName}} is an automatic online investment platform established by a team of professional traders focusing mainly
                            on crypto currency trading over multiple exchanges and market. Adding value to the team of like minded
                            businessmen specialist in Bitcoin mining. Our company has been growing fast by expanding trade industry
                            and mining techniques and rolling more elite traders and Miners respectively. {{$siteName}} is helping to educate,
                            provide service for, secure, protect and ultimately profit from this emerging industry.
                            Anyone all over the world can join {{$siteName}} and began earning passive income by taking advantage of
                            our expertise in Bitcoin mining and crypto currency trading.
                        </p>
                        <div class="action-btns mt-3">
                            <a href="about" class="btn btn-primary">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-12 mt-1">
                    <div class="about-content-right mb-md-4 mb-lg-0">
                        <div class="feature-tabs-wrap">
                            <ul class="nav nav-tabs mb-3 border-bottom-0 feature-tabs" data-tabs="tabs">
                                <li class="nav-item">
                                    <a class="nav-link d-flex align-items-center active" href="#feature-tab-2"
                                       data-toggle="tab">
                                        <h6 class="mb-0">Our Mission</h6>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link d-flex align-items-center" href="#feature-tab-3"
                                       data-toggle="tab">
                                        <h6 class="mb-0">Our Vision</h6>
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content feature-tab-content">
                                <div class="tab-pane active" id="feature-tab-2">
                                    <p>The goal of {{$siteName}} is to provide its users a unique, safe and secured platform for
                                        their investments in the field of crypto currency. This is why we have used
                                        cutting-edge platform with extensive infrastructure intended to make things more
                                        convenient.</p>

                                    <p>Due to this technology, our platform is able to make possible of providing real and steady profits on an ongoing daily basis.</p>
                                </div>
                                <div class="tab-pane" id="feature-tab-3">
                                    <p>At {{$siteName}}, we commit to provide services we render to our clients. This is why we always try to expand our technical
                                        capabilities and financial turnover with the help
                                        of ASIC miners having hands-on experience guarantees for gaining profit by generating crypto currencies.

                                        {{$siteName}} envisions to widen the pool of investors by engaging in effective strategic mining and trading of crypto currencies.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="about-us-section ptb-100">
        <div class="container">
            <div class="row justify-content-around">
                <div class="col-md-12 col-lg-6">
                    <div class="about-img-wrap">
                        <img src="{{asset('home/img/card.png')}}" alt="video" class="img-fluid rounded shadow-sm">

                    </div>
                </div>
                <div class="col-md-12 col-lg-5">
                    <div class="about-content-right mb-md-4 mb-lg-0">
                        <h2>Our  virtual credit Card</h2>
                        <p>The partnership aims to fill a gap in the traditional financial system that has left many without access to essential banking products. According to a 2017 survey by the FDIC, 25 percent of U.S. households are unbanked or underbanked, while global numbers have reached a staggering 1.7 billion, according to data released by the World Bank. Through BlockCard, {{$siteName}}  investors can have a virtual card issued to them while a physical card is mailed to them. The card has a minimum of $1000 balance needed. It can be used at over 45 million merchants and ATMs – anywhere in the world where major credit cards are accepted.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="feature-content-two ptb-100 white-bg text-dark">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="section-heading text-center mb-5">
                        <h2>Why Us?</h2>
                        <p class="lead">
                            Here are some of the many features that define our uniqueness.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-headphone-alt icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2 text-dark">24/7 Support</h5>
                        <p>Our customer care service is available at all time to attend to you and also offer profitable advice on the best investment programs.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-key icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2 text-dark">Secured Transactions</h5>
                        <p>Your financial future is secured through our multiple investment packages that are suitable for every class.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-lock icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2 text-dark">Quick Returns</h5>
                        <p>We offer you an unbeatable interest on your investment within the shortest possible time</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-reload icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2 text-dark">Strong Security</h5>
                        <p>The system runs on highly encrypted algorithms to protect and secure our user accounts. We have experienced security experts who are constantly fixing threats.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-world icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2 text-dark">Our Knowledge</h5>
                        <p>The team of technicians {{$siteName}} and the company's financial department monitor key cryptocurrency market trends. We are studying the processes of mining and search the system that will optimize costs and reduce net cost of Bitcoin.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-thought icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2 text-dark">Our Experience</h5>
                        <p>Our team trades cryptocurrencies since their entry into the wide circulation in 2013, it understands the Bitcoin pricing mechanisms and monitors the main trends at the market. </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="our-blog-section pt-2 pb-5">
        <div class="container">
            <div class="row">



                <div class="col-md-6">
                    <div class="single-blog-card card border-0 shadow-sm">
                        <div class="blog-img">
                            <span class="category position-absolute">Buying a new-build home</span>
                            <img src="{{asset('home/img/estate/1.jpg')}}"
                                 class="card-img-top position-relative img-fluid" alt="blog">
                        </div>
                        <div class="card-body bg-white text-dark" style="height:35rem;">
                            <h2 class="text-dark">
                                Our aim is to bring positive growth and change to the world
                                through our investment offers.
                            </h2>
                            <p class="card-text">
                                {{$siteName}} is top-notch leading Real Estate and Project Management
                                Organization, offering an Outstanding real estate Services. Its primary
                                focus is to help individuals and corporate Organizations to become landowners
                                and homeowners. Our properties have well laid out the plan for the modern
                                development of the 21st-century estates with modern facilities and
                                infrastructures that would be well serviced. Our properties have c of o,
                                gazette, excision, registered survey etc.
                            </p>

                        </div>

                    </div>
                </div>


                <div class="col-md-6">
                    <div class="single-blog-card card border-0 shadow-sm">
                        <div class="blog-img">
                            <span class="category position-absolute">Ready to move on?</span>
                            <img src="{{asset('home/img/estate/8.jpg')}}" class="card-img-top position-relative img-fluid" alt="blog">
                        </div>
                        <div class="card-body bg-white text-dark" style="height:45.5rem;">
                            <h2 class="text-dark">We know what a home is really worth</h2>
                            <p class="card-text">
                                {{$siteName}}is a Real Estate and Project Management company with
                                primary commitment in land/property development, real estate
                                investment and brokerage services. Our interest to offer excellent
                                services in the real estate industry is second to none as we provide
                                professional and flexible service to our streams of customers in any country.
                            </p>

                        </div>

                    </div>
                </div>




            </div>

        </div>
    </section>
    <section class="pricing-section ptb-100 gray-light-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="section-heading text-center mb-5">
                        <h2>Investment Plans</h2>
                        <p class="lead">We understand the needs of our customers very much that our investment plans covers the widest range of benefits.</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                @foreach($packages as $package)
                    @inject('option','App\Defaults\Custom')
                    <div class="col-lg-4 col-md mb-4">
                        <div class="card text-center single-pricing-pack">
                            <div class="pt-4"><h5>{{$package->name}}</h5>
                                <span class="badge badge-success">Investment</span></div>
                            <div class="card-header py-4 border-0 pricing-header">
                                <div class="h1 text-center mb-0">
                                    <p class="pricing-rate">{{$package->roi}} <sup>%</sup>
                                        <span>{{$option->getReturnType($package->returnType)}} for {{$package->Duration}}</span>
                                    </p>

                                </div>
                            </div>
                            <div class="card-body bg-transparent affix text-white">
                                <ul class="list-unstyled text-left text-sm mb-4 pricing-feature-list">
                                    <li>
                                        <span class="ti-check-box mr-2 color-secondary"></span>
                                        <span>Min</span><b class="float-right">${{number_format($package->minAmount,2)}}</b>
                                    </li>
                                    <li>
                                        <span class="ti-check-box mr-2 color-secondary"></span>
                                        <span>Max</span><b class="float-right">
                                            @if($package->isUnlimited !=1)
                                                ${{number_format($package->maxAmount,2)}}
                                            @else
                                                Unlimited
                                            @endif
                                        </b>
                                    </li>
                                    <li>
                                        <span class="ti-check-box mr-2 color-secondary"></span>
                                        <span>Profit</span><b class="float-right">
                                            {{$package->numberOfReturns*$package->roi}}%
                                        </b>
                                    </li>

                                    <li>
                                        <span class="ti-check-box mr-2 color-secondary"></span>
                                        <span>Referral Bonus</span><b class="float-right">{{$package->referral}}%</b>
                                    </li>
                                    <li>
                                        <span class="ti-check-box mr-2 color-secondary"></span>
                                        <span>Duration</span><b class="float-right">{{$package->Duration}}</b>
                                    </li>
                                </ul>
                                <a href="{{route('login')}}" class="btn outline-white-btn p-2">Get Started Now</a>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>

            <div class="row justify-content-center">



            </div>
            <div class="action-btns mt-3 text-center">
                <a href="plans" class="btn btn-success">View All Plans</a>
            </div>

        </div>
    </section>




    <!-- Section Features -->


    <section class="call-to-action pt-5 pb-5 bg-white">
        <div class="container bg-white">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-8">
                    <div class="call-to-action-content text-white text-center mb-4 text-dark">
                        <h2 class="text-dark mb-1">A Summary of Our Journey</h2>
                        <p class="lead">We have over the years gannered loads of experiences that has consequently boosted our portfolio in world financial services.</p>
                    </div>
                </div>
            </div>
            <div class="row text-dark">
                <div class="col-md-6 col-lg-3">
                    <div class="single-counter rounded p-4 text-center text-dark">
                        <span class="ti-user icon-md"></span>
                        <h3 class="mb-0 text-dark">49869</h3>
                        <p>Active Users</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single-counter rounded p-4 text-center text-dark">
                        <span class="ti-time icon-md"></span>
                        <h3 class="mb-0 text-dark">1330</h3>
                        <p>Running Days</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single-counter rounded p-4 text-center text-dark">
                        <span class="ti-cup icon-md"></span>
                        <h3 class="mb-0 text-dark">371</h3>
                        <p>Won Award</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="single-counter rounded p-4 text-center text-dark">
                        <span class="ti-world icon-md"></span>
                        <h3 class="mb-0 text-dark">182</h3>
                        <p>Global Presence</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-us-section ptb-100">
        <div class="container">
            <div class="row justify-content-between align-items-center">
                <div class="col-md-12 col-lg-6 mx-auto border border-primary">
                    <div class="video-promo-content mb-md-4 mb-lg-0">
                        <h2>Take advantage of proven solutions to achieve {{$siteName}} success</h2>
                        <p>Our roots go back to 2013 - right around the beginning of the revolution that would become known
                            today as Bitcoin. Following the boom of this industry, we quickly began to see some of the common
                            issues that were present when people tried to become involved. We took this need into account
                            along with our own personal ambition to develop an integrated platform that was able to both
                            satisfy the needs of investors and meet their expectations with sufficient returns on their
                            investments. Since then, we have maintained our focus as a company that looks towards the future
                            and transforms the opportunities offered to our valued clients.

                        </p>
                        <ul class="list-unstyled tech-feature-list">
                            <li class="py-1"><span class="ti-check-box mr-2 color-secondary"></span><strong>Security</strong>
                                High Tech
                            </li>
                            <li class="py-1"><span class="ti-check-box mr-2 color-secondary"></span><strong>Corporate</strong>
                                Blueback Global
                            </li>
                            <li class="py-1"><span class="ti-check-box mr-2 color-secondary"></span><strong>Insured</strong> AIICO Insurance American International</li>
                        </ul>
                        <!--<div class="row mt-4">
                            <div class="col-4">
                                <div class="counter-single">
                                    <h5 class="mb-0 color-secondary">USD </h5>
                                    <strong>Deposits</strong>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="counter-single">
                                    <h5 class="mb-0 color-secondary">USD </h5>
                                    <strong>Withdrawal</strong>
                                </div>
                            </div>
                        </div>-->
                        <div class="action-btns mt-4">
                            <a href="services" class="btn primary-solid-btn mr-2">View Our Services</a>
                            <a href="contact" class="btn outline-btn">Contact Us</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section class="work-process-new ptb-100 gray-light-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-9 col-lg-8">
                    <div class="section-heading text-center mb-5">
                        <h2>Our Process is Simple and Short</h2>
                        <p class="lead">Distinctively grow go forward manufactured products and optimal networks. Enthusiastically
                            disseminate outsourcing through revolutionary.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="work-process-wrap text-center">
                        <div class="single-work-process">
                            <div class="work-process-icon-wrap secondary-bg rounded-circle">
                                <i class="ti-user icon-md text-white"></i>
                                <span class="process-step primary-bg text-white shadow-sm">1</span>
                            </div>
                            <div class="work-process-content mt-4">
                                <h5>Sign Up</h5>
                                <p>Click on the registration button to get a new account.</p>
                            </div>
                        </div>
                        <div class="single-work-process">
                            <div class="work-process-icon-wrap secondary-bg rounded-circle">
                                <i class="ti-settings icon-md text-white"></i>
                                <span class="process-step primary-bg text-white shadow-sm">2</span>
                            </div>
                            <div class="work-process-content mt-4">
                                <h5>Set Up Your Wallet</h5>
                                <p>Login to your account to add new wallet</p>
                            </div>
                        </div>
                        <div class="single-work-process">
                            <div class="work-process-icon-wrap secondary-bg rounded-circle">
                                <i class="ti-pencil-alt icon-md text-white"></i>
                                <span class="process-step primary-bg text-white shadow-sm">3</span>
                            </div>
                            <div class="work-process-content mt-4">
                                <h5>Make Deposit</h5>
                                <p>Make deposit from any of our plans that is convenient for you. </p>
                            </div>
                        </div>
                        <div class="single-work-process">
                            <div class="work-process-icon-wrap secondary-bg rounded-circle">
                                <i class="ti-wallet icon-md text-white"></i>
                                <span class="process-step primary-bg text-white shadow-sm">4</span>
                            </div>
                            <div class="work-process-content mt-4">
                                <h5>Make Withdrawal</h5>
                                <p>Withdraw to your wallet at your convenient or reinvest to earn more. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Section Team -->

    <!-- Section Features -->
    <section class="our-blog-section pt-2 pb-5 gray-light-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="section-heading mb-5">
                        <h2>Our Services</h2>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-md-4">
                    <div class="single-blog-card card border-0 shadow-sm">
                        <div class="blog-img">
                            <span class="category position-absolute">Forex</span>
                            <img src="{{asset('home/img/serv/forex.jpg')}}" class="card-img-top position-relative img-fluid" alt="blog">
                        </div>
                        <div class="card-body">
                            <p class="card-text"></p>
                        </div>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="single-blog-card card border-0 shadow-sm">
                        <div class="blog-img">
                            <span class="category position-absolute">Agriculture</span>
                            <img src="{{asset('home/img/serv/agric.jpg')}}" class="card-img-top position-relative img-fluid" alt="blog">
                        </div>
                        <div class="card-body">
                            <p class="card-text"></p>
                        </div>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="single-blog-card card border-0 shadow-sm">
                        <div class="blog-img">
                            <span class="category position-absolute">Oil And Gas</span>
                            <img src="{{asset('home/img/serv/oil.jpg')}}" class="card-img-top position-relative img-fluid" alt="blog">
                        </div>
                        <div class="card-body">
                            <p class="card-text"></p>
                        </div>

                    </div>
                </div>


            </div>
            <div class="action-btns mt-3 text-center">
                <a href="services" class="btn text-center btn-primary">View All Services</a>
            </div>
        </div>
    </section>
    <section id="download" class="video-promo ptb-100">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-md-6" >
                    <!-- TradingView Widget BEGIN -->
                    <div class="tradingview-widget-container">
                        <div class="tradingview-widget-container__widget"></div>
                        <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/markets/cryptocurrencies/prices-all/" rel="noopener" target="_blank"><span class="blue-text">Cryptocurrency Markets</span></a> by TradingView</div>
                        <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-screener.js" async>
                            {
                                "width": "100%",
                                "height": 690,
                                "defaultColumn": "overview",
                                "screener_type": "crypto_mkt",
                                "displayCurrency": "USD",
                                "colorTheme": "light",
                                "locale": "en",
                                "isTransparent": false
                            }
                        </script>
                    </div>
                    <!-- TradingView Widget END -->
                </div>
                <div class="col-md-5">
                    <!-- TradingView Widget BEGIN -->
                    <div class="tradingview-widget-container">
                        <div id="tradingview_d91c7"></div>
                        <div class="tradingview-widget-copyright"><a href="https://www.tradingview.com/symbols/NASDAQ-AAPL/" rel="noopener" target="_blank"><span class="blue-text">AAPL Chart</span></a> by TradingView</div>
                        <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
                        <script type="text/javascript">
                            new TradingView.widget(
                                {
                                    "width": "100%",
                                    "height": 690,
                                    "symbol": "NASDAQ:AAPL",
                                    "interval": "D",
                                    "timezone": "Etc/UTC",
                                    "theme": "light",
                                    "style": "1",
                                    "locale": "en",
                                    "toolbar_bg": "#f1f3f6",
                                    "enable_publishing": false,
                                    "allow_symbol_change": true,
                                    "container_id": "tradingview_d91c7"
                                }
                            );
                        </script>
                    </div>
                    <!-- TradingView Widget END -->
                </div>
            </div>
        </div>
    </section><section class="testimonial-section ptb-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-9 col-lg-8">
                    <div class="section-heading mb-5 text-center">
                        <h2>What Our Clients Say About Us</h2>
                        <p class="lead">
                            Our expertise in financial services has bettered the lives of our clients greatly, their testimony has encouraged us greatly.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row">



                <div class="col-md-6 col-lg-4">
                    <div class="testimonial-single shadow-sm gray-light-bg rounded p-4">
                        <blockquote>
                            This is remarkably one of the best Investments I have made this year                        </blockquote>
                        <div class="client-img d-flex align-items-center justify-content-between pt-4">
                            <div class="d-flex align-items-center">
                                <img src="{{asset('home/img/pro.jpg')}}" alt="client" width="50" class="img-fluid rounded-circle shadow-sm mr-3"/>
                                <div class="client-info">
                                    <h5 class="mb-0">Alexandra lukas</h5>
                                    <small class="mb-0">Investor</small>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>


                <div class="col-md-6 col-lg-4">
                    <div class="testimonial-single shadow-sm gray-light-bg rounded p-4">
                        <blockquote>
                            I keep recommending to my friends and family because of their overwhelmingly impressive financial services                        </blockquote>
                        <div class="client-img d-flex align-items-center justify-content-between pt-4">
                            <div class="d-flex align-items-center">
                                <img src="{{asset('home/img/pro.jpg')}}" alt="client" width="50" class="img-fluid rounded-circle shadow-sm mr-3"/>
                                <div class="client-info">
                                    <h5 class="mb-0">Nora Woodward</h5>
                                    <small class="mb-0">Investor</small>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>


                <div class="col-md-6 col-lg-4">
                    <div class="testimonial-single shadow-sm gray-light-bg rounded p-4">
                        <blockquote>
                            Great company With great investment services keep up the good work                        </blockquote>
                        <div class="client-img d-flex align-items-center justify-content-between pt-4">
                            <div class="d-flex align-items-center">
                                <img src="{{asset('home/img/pro.jpg')}}" alt="client" width="50" class="img-fluid rounded-circle shadow-sm mr-3"/>
                                <div class="client-info">
                                    <h5 class="mb-0">David reed</h5>
                                    <small class="mb-0">Investor</small>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>


            </div>

        </div>
    </section>

    <section class="our-blog-section ptb-100 gray-light-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-heading mb-5 text-center">
                        <h2 class="text-center">Recent Verified Transactions</h2>
                        <p class="lead">
                            Below is a live update of transactions from our clients, it is updated every 5 minutes.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">


                <div class="col-md-6">
                    <div class="card card-cascade narrower">

                        <!--Card image-->
                        <div
                            class="view view-cascade narrower py-2 mx-4 mb-3 affix">

                            <h6 class="text-white text-center">
                                <span class="ti-bag mr-2 color-secondary"></span>
                                Recent Deposits
                            </h6>


                        </div>
                        <!--/Card image-->

                        <div class="px-4">

                            <div class="">
                                <!--Table-->
                                <table class="table table-hover mb-0 table-striped">
                                    <tbody>
                                        @foreach($deposits as $deposit)
                                            @inject('option','App\Defaults\Custom')
                                            <tr>
                                                <td class="color-secondary">
                                                    <span class="ti-check-box mr-2 color-secondary"></span>
                                                    {{$option->getInvestorUsername($deposit->user)}}
                                                </td>
                                                <td>
                                                    <b>${{number_format($deposit->amount,2)}}</b>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <!--Table body-->
                                </table>
                                <!--Table-->
                            </div>

                        </div>

                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card card-cascade narrower">

                        <!--Card image-->
                        <div
                            class="view view-cascade narrower py-2 mx-4 mb-3 affix">

                            <h6 class="text-white text-center"><span class="ti-wallet mr-2 color-secondary"></span>Recent Withdrawals</h6>


                        </div>
                        <!--/Card image-->

                        <div class="px-4">

                            <div class="">
                                <!--Table-->
                                <table class="table table-hover mb-0 table-striped">
                                    <tbody>
                                        @foreach($withdrawals as $withdrawal)
                                            @inject('option','App\Defaults\Custom')
                                            <tr>
                                                <td class="color-secondary">
                                                    <span class="ti-check-box mr-2 color-secondary"></span>
                                                    {{$option->getInvestorUsername($withdrawal->user)}}
                                                </td>
                                                <td>
                                                    <b>${{number_format($withdrawal->amount,2)}}</b>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                    <!--Table body-->
                                </table>
                                <!--Table-->
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Table with panel -->

    <!-- Table with panel --><!-- Section Blog -->

    <!-- Section FAQ -->
    <section class="promo-section ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-9">
                    <div class="section-heading mb-5">
                        <h2>Frequently Asked Questions</h2>
                        <p class="lead">
                            Have Any Question?
                        </p>
                    </div>
                </div>
            </div>
            <!--pricing faq start-->
            <div class="row">


                <div class="col-lg-6">

                    <div id="accordion-1" class="accordion accordion-faq">
                        <!-- Accordion card 1 -->
                        <div class="card">
                            <div class="card-header py-4" id="heading-1-1" data-toggle="collapse" role="button"
                                 data-target="#collapse-1-1" aria-expanded="false" aria-controls="collapse-1-1">
                                <h6 class="mb-0"><span class="ti-receipt mr-3"></span> What is {{$siteName}}?</h6>
                            </div>
                            <div id="collapse-1-1" class="collapse" aria-labelledby="heading-1-1"
                                 data-parent="#accordion-1">
                                <div class="card-body">
                                    <p>{{$siteName}} our company provides a full investment service focused on the bitcoin and cryptocurrency market We are among the best platforms to invest and grow your bitcoin and other cryptocurrency</p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                    <div id="accordion-1" class="accordion accordion-faq">
                        <!-- Accordion card 1 -->
                        <div class="card">
                            <div class="card-header py-4" id="heading-1-2" data-toggle="collapse" role="button"
                                 data-target="#collapse-1-2" aria-expanded="false" aria-controls="collapse-1-2">
                                <h6 class="mb-0"><span class="ti-receipt mr-3"></span> How do I create my account?</h6>
                            </div>
                            <div id="collapse-1-2" class="collapse" aria-labelledby="heading-1-2"
                                 data-parent="#accordion-1">
                                <div class="card-body">
                                    <p>Registration process is very easy and will take a few moments to complete Simply click CREATE ACCOUNT button  and fill in all the required fields</p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                    <div id="accordion-1" class="accordion accordion-faq">
                        <!-- Accordion card 1 -->
                        <div class="card">
                            <div class="card-header py-4" id="heading-1-3" data-toggle="collapse" role="button"
                                 data-target="#collapse-1-3" aria-expanded="false" aria-controls="collapse-1-3">
                                <h6 class="mb-0"><span class="ti-receipt mr-3"></span> How do I make a deposit?</h6>
                            </div>
                            <div id="collapse-1-3" class="collapse" aria-labelledby="heading-1-3"
                                 data-parent="#accordion-1">
                                <div class="card-body">
                                    <p>To deposit funds in your trading account is quick and simple For your convenience you may choose one of the several available deposit methods To make a successful deposit please follow the steps below Login to your account Click on the DEPOSITS button in the DASHBOARD section Choose the deposit option And follow the steps to complete your transaction</p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                    <div id="accordion-1" class="accordion accordion-faq">
                        <!-- Accordion card 1 -->
                        <div class="card">
                            <div class="card-header py-4" id="heading-1-4" data-toggle="collapse" role="button"
                                 data-target="#collapse-1-4" aria-expanded="false" aria-controls="collapse-1-4">
                                <h6 class="mb-0"><span class="ti-receipt mr-3"></span> How long does my deposit take before it can reflect on my {{$siteName}} account dashboard?</h6>
                            </div>
                            <div id="collapse-1-4" class="collapse" aria-labelledby="heading-1-4"
                                 data-parent="#accordion-1">
                                <div class="card-body">
                                    <p>Your deposit will be reflected immediately once it is confirmed on the blockchain network</p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                </div>

                <div class="col-lg-6">

                    <div id="accordion-2" class="accordion accordion-faq">
                        <!-- Accordion card 1 -->
                        <div class="card">
                            <div class="card-header py-4" id="heading-1-5" data-toggle="collapse" role="button"
                                 data-target="#collapse-2-5" aria-expanded="false" aria-controls="collapse-2-5">
                                <h6 class="mb-0"><span class="ti-receipt mr-3"></span> How do I make a withdrawal?</h6>
                            </div>
                            <div id="collapse-2-5" class="collapse" aria-labelledby="heading-2-5"
                                 data-parent="#accordion-2">
                                <div class="card-body">
                                    <p>To make a withdrawal request click the WITHDRAW button at the top center of your {{$siteName}} account dashboard and input the required details to withdraw</p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                    <div id="accordion-2" class="accordion accordion-faq">
                        <!-- Accordion card 1 -->
                        <div class="card">
                            <div class="card-header py-4" id="heading-1-6" data-toggle="collapse" role="button"
                                 data-target="#collapse-2-6" aria-expanded="false" aria-controls="collapse-2-6">
                                <h6 class="mb-0"><span class="ti-receipt mr-3"></span> How long does it take to process my withdrawal?</h6>
                            </div>
                            <div id="collapse-2-6" class="collapse" aria-labelledby="heading-2-6"
                                 data-parent="#accordion-2">
                                <div class="card-body">
                                    <p>Once we receive your withdrawal request we process immediately and send to your bitcoin wallet</p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                    <div id="accordion-2" class="accordion accordion-faq">
                        <!-- Accordion card 1 -->
                        <div class="card">
                            <div class="card-header py-4" id="heading-1-7" data-toggle="collapse" role="button"
                                 data-target="#collapse-2-7" aria-expanded="false" aria-controls="collapse-2-7">
                                <h6 class="mb-0"><span class="ti-receipt mr-3"></span> Can I have more than one account?</h6>
                            </div>
                            <div id="collapse-2-7" class="collapse" aria-labelledby="heading-2-7"
                                 data-parent="#accordion-2">
                                <div class="card-body">
                                    <p>No you cannot have more than one account only investors on the vip plan are allowed to do so</p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                    <div id="accordion-2" class="accordion accordion-faq">
                        <!-- Accordion card 1 -->
                        <div class="card">
                            <div class="card-header py-4" id="heading-1-8" data-toggle="collapse" role="button"
                                 data-target="#collapse-2-8" aria-expanded="false" aria-controls="collapse-2-8">
                                <h6 class="mb-0"><span class="ti-receipt mr-3"></span> Is this company properly registered?</h6>
                            </div>
                            <div id="collapse-2-8" class="collapse" aria-labelledby="heading-2-8"
                                 data-parent="#accordion-2">
                                <div class="card-body">
                                    <p>Yes we are officially and properly registered with the united kingdom company house our company registration number is 138898   and registered with the name {{$siteName}} LTD</p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                    <div id="accordion-2" class="accordion accordion-faq">
                        <!-- Accordion card 1 -->
                        <div class="card">
                            <div class="card-header py-4" id="heading-1-9" data-toggle="collapse" role="button"
                                 data-target="#collapse-2-9" aria-expanded="false" aria-controls="collapse-2-9">
                                <h6 class="mb-0"><span class="ti-receipt mr-3"></span> Can I have more than two accounts?</h6>
                            </div>
                            <div id="collapse-2-9" class="collapse" aria-labelledby="heading-2-9"
                                 data-parent="#accordion-2">
                                <div class="card-body">
                                    <p>We do not allow multiple accounts except only for our investors on the VIP plan</p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                    <div id="accordion-2" class="accordion accordion-faq">
                        <!-- Accordion card 1 -->
                        <div class="card">
                            <div class="card-header py-4" id="heading-1-10" data-toggle="collapse" role="button"
                                 data-target="#collapse-2-10" aria-expanded="false" aria-controls="collapse-2-10">
                                <h6 class="mb-0"><span class="ti-receipt mr-3"></span> how many times can i make a deposit?</h6>
                            </div>
                            <div id="collapse-2-10" class="collapse" aria-labelledby="heading-2-10"
                                 data-parent="#accordion-2">
                                <div class="card-body">
                                    <p>
                                        Yes you can make as many deposit as you want on any of our investment plans except the Starter Plan where you can only invest two times. And you can only withdraw once in the Starter plan.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                </div>

            </div>
            <!--pricing faq end-->
        </div>
    </section><section class="contact-us-section py-5">
        <div class="container contact">
            <div class="col-12 pb-3 message-box d-none">
                <div class="alert alert-danger"></div>
            </div>
            <div class="row justify-content-around">
                <div class="col-md-6">
                    <div class="contact-us-form gray-light-bg rounded p-5">
                        <h4>Ready to get started?</h4>
                        <form method="post" action="https://{{$siteName}}.com/contact.php" class="contact-us-form">
                            <div class="form-row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <input type="text" required="required" placeholder="Enter Name *" class="form-control" name="name">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input type="email" required="required" placeholder="Enter Email *" class="form-control" name="email">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input type="text" required="required" placeholder="Enter Subject" class="form-control" name="subject">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea required="required" placeholder="Message *" class="form-control" name="msg" rows="5"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-12 mt-3">
                                    <button type="submit" title="Submit Your Message!" name="send" class="btn secondary-solid-btn">
                                        Send Message
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="contact-us-content">
                        <h2>Looking for a Profitable Investment Plan?</h2>
                        <p class="lead">Search no! Click on the button below to get started.</p>

                        <a href="{{route('register')}}" class="btn outline-btn align-items-center">Get Your Solution <span class="ti-arrow-right pl-2"></span></a>

                        <hr class="my-5">

                        <h5>Our Headquarters</h5>
                        <address>
                            {{$web->address}}
                        </address>
                        <br>
                        <span>Phone: {{$web->phone}}</span> <br>
                        <span>Email: <a href="mailto:{{$web->email}}" class="link-color">{{$web->email}}</a></span>

                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
