@extends('home.base')

@section('content')

    <!-- START SECTION BANNER -->
    <section class="hero-section ptb-100 gradient-overlay"
             style="background: url('{{asset('home/img/header-bg-5.jpg')}}')no-repeat center center / cover">
        <div class="container">

            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-7">
                    <div class="page-header-content text-white text-center pt-sm-5 pt-md-5 pt-lg-0">
                        <h1 class="text-white mb-0">{{$pageName}}</h1>
                        <div class="custom-breadcrumb">
                            <ol class="breadcrumb d-inline-block bg-transparent list-inline py-0">
                                <li class="list-inline-item breadcrumb-item active">{{$siteName}}</li>
                            </ol>
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
                        <div class="promo-block-content">
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
                    </div>
                </div>
                <div class="col-md-12 col-lg-12 mt-5">
                    <div class="about-content-right mb-md-4 mb-lg-0">
                        <p>
                            Recently, our company made a successful attempt the international technology market with an
                            offer of profitable investments in financial investments. Our main aim is to provide safe and
                            secured returns to our investors with effective and profitable trading and mining solutions
                            where investors need little or no experience at all about the same. Our investors can choose
                            one of three lucrative yet simple investment plan with {{$siteName}}. If you want to join us, to earn
                            over a period of long time then all you need to do is to register on our website, make deposit
                            and sit back and relax while our experts work for you. We are expanding our features by providing
                            you instant deposit and withdrawals. Use the possibilities of the company and earn on daily basis.
                        </p>

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
    <section class="feature-content-two ptb-100 gray-light-bg">
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
                        <h5 class="mb-2">24/7 Support</h5>
                        <p>Our customer care service is available at all time to attend to you and also offer profitable advice on the best investment programs.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-key icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2">Secured Transactions</h5>
                        <p>Your financial future is secured through our multiple investment packages that are suitable for every class.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-lock icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2">Quick Returns</h5>
                        <p>We offer you an unbeatable interest on your investment within the shortest possible time</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-reload icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2">Strong Security</h5>
                        <p>The system runs on highly encrypted algorithms to protect and secure our user accounts. We have experienced security experts who are constantly fixing threats.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-world icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2">Our Knowledge</h5>
                        <p>The team of technicians {{$siteName}} and the company's financial department monitor key cryptocurrency market trends. We are studying the processes of mining and search the system that will optimize costs and reduce net cost of Bitcoin.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="feature-feature-list p-4 text-center">
                        <span class="ti-thought icon-sm d-block color-secondary mb-3"></span>
                        <h5 class="mb-2">Our Experience</h5>
                        <p>Our team trades cryptocurrencies since their entry into the wide circulation in 2013, it understands the Bitcoin pricing mechanisms and monitors the main trends at the market. </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="team-two-section ptb-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-8">
                    <div class="section-heading text-center mb-5">
                        <h2>Meet our lovely team</h2>
                        <p class="lead">Distinctively grow go forward manufactured products and optimal networks. Globally administrate 24/7 interfaces and end-to-end platforms.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="staff-member">
                        <div class="card gray-light-bg text-center border-0">
                            <img src="{{asset('home/img/team-6.jpg')}}" alt="team image" class="card-img-top">
                            <div class="card-body">
                                <h5 class="teacher mb-0">Louis Rogers</h5>
                                <span>Broker</span>
                            </div>
                        </div>
                        <div class="overlay d-flex align-items-center justify-content-center">
                            <div class="overlay-inner">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="staff-member">
                        <div class="card gray-light-bg text-center border-0">
                            <img src="{{asset('home/img/team-3.jpg')}}" alt="team image" class="card-img-top">
                            <div class="card-body">
                                <h5 class="teacher mb-0">Katherine Jackson</h5>
                                <span>Broker</span>
                            </div>
                        </div>
                        <div class="overlay d-flex align-items-center justify-content-center">

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="staff-member">
                        <div class="card gray-light-bg text-center border-0">
                            <img src="{{asset('home/img/team-8.jpg')}}" alt="team image" class="img-fluid">
                            <div class="card-body">
                                <h5 class="teacher mb-0">Kieran Abbott</h5>
                                <span>Founder & CEO</span>
                            </div>
                        </div>
                        <div class="overlay d-flex align-items-center justify-content-center">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- END SECTION TEAM -->
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
                                    <p>Yes you can make as many deposit as you want on any of our investment plans except the starter plan where you can only invest 3 times after which you make a choice to continue investing with us or not</p>
                                </div>
                            </div>
                        </div>
                        <!-- Accordion card 3 -->

                    </div>

                </div>

            </div>
            <!--pricing faq end-->
        </div>
    </section><!-- END SECTION FAQ -->

@endsection
