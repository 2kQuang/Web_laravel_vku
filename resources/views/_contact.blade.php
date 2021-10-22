<section id="contact-section" class="page text-white parallax" data-stellar-background-ratio="0.5"
    style="background-image: url(asset/img/map-bg.jpg);">
    <div class="cover"></div>

    <!-- Begin page header-->
    <div class="page-header-wrapper">
        <div class="container">
            <div class="page-header text-center wow fadeInDown" data-wow-delay="0.4s">
                <h2>Contacts</h2>
                <div class="devider"></div>
                <p class="subtitle">All to contact us</p>
            </div>
        </div>
    </div>
    <!-- End page header-->

    <div class="contact wow bounceInRight" data-wow-delay="0.4s">
        <div class="container">
            <div class="row">

                <div class="col-sm-6">
                    <div class="contact-info">
                        <h4>Our Address</h4>
                        <ul class="contact-address">
                            <li><i class="fa fa-map-marker fa-lg"></i>470 Đường Trần Đại Nghĩa, Hoà Hải, Ngũ Hành Sơn,<br> Đà Nẵng 550000,<br> Việt Nam</li>
                            <li><i class="fa fa-phone"></i>&nbsp; 0397 391 045</li>
                            <!-- <li><i class="fa fa-print"></i>&nbsp; 1 -234 -456 -7890</li> -->
                            <li><i class="fa fa-envelope"></i> tvquang.19i@gmail.com</li>
                            <li><i class="fa fa-skype"></i>Quang - Dev_Web</li>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="contact-form">
                        <h4>Write to us</h4>
                        <form role="form" method="post" action="{{route('feedback')}}">
                        @csrf 
                        <div class="form-group">
                                <input type="text" name="name" class="form-control input-lg" placeholder="Your Name" required>
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" class="form-control input-lg" placeholder="E-mail" required>
                            </div>
                            <div class="form-group">
                                <input type="text" name="subject" class="form-control input-lg" placeholder="Subject" required>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control input-lg" name="content" rows="5" placeholder="Content"
                                    required></textarea>
                            </div>
                            <button type="submit" class="btn wow bounceInRight" data-wow-delay="0.8s">Send</button>
                        </form>
                    </div>
                </div>

            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
</section>