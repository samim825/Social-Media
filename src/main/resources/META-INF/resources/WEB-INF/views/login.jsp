<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from demo.hasthemes.com/adda-preview/adda/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2020 17:09:34 GMT -->
 <%@include file="includes/head.jsp" %>

<body class="bg-transparent">

    <main>
        <div class="main-wrapper pb-0 mb-0">
            <div class="timeline-wrapper">

                <div class="timeline-page-wrapper">
                    <div class="container-fluid p-0">
                        <div class="row no-gutters">
                            <div class="col-lg-6 order-2 order-lg-1">
                                <div class="timeline-bg-content bg-img" data-bg="assets/images/timeline/adda-timeline.jpg">
                                    <h3 class="timeline-bg-title">Let?s see what?s happening to you and your world. Welcome in Adda.</h3>
                                </div>
                            </div>
                            <div class="col-lg-6 order-1 order-lg-2 d-flex align-items-center justify-content-center">
                                <div class="signup-form-wrapper">
                                    <h1 class="text-center">${msg}</h1>
                                    <h1 class="text-center">${SPRING_SECURITY_LAST_EXCEPTION.message}</h1>
                                    <h1 class="create-acc text-center">Please Sign in</h1>
                                    <div class="signup-inner text-center">
                                        <h3 class="title">Welcome to Adda</h3>
                                        <form class="signup-inner--form" action="/login" method="POST">
                                            <div class="row">
                                                <div class="col-12">
                                                    <input type="email" class="single-field" placeholder="Email" name = "email" required>
                                                </div>

                                                <div class="col-12">
                                                    <input type="password" class="single-field" placeholder="Password" name="password" required>
                                                </div>
                                                <div class="col-12">
                                                    <button type"submit" class="submit-btn">Sign in</button>
                                                </div>
                                            </div>
                                            <h6 class="terms-condition">Haven't account <a href="/registration">Register here</a></h6>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- JS
============================================ -->

    <!-- Modernizer JS -->
    <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <!-- jQuery JS -->
    <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
    <!-- Popper JS -->
    <script src="assets/js/vendor/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="assets/js/vendor/bootstrap.min.js"></script>
    <!-- Slick Slider JS -->
    <script src="assets/js/plugins/slick.min.js"></script>
    <!-- nice select JS -->
    <script src="assets/js/plugins/nice-select.min.js"></script>
    <!-- audio video player JS -->
    <script src="assets/js/plugins/plyr.min.js"></script>
    <!-- perfect scrollbar js -->
    <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
    <!-- light gallery js -->
    <script src="assets/js/plugins/lightgallery-all.min.js"></script>
    <!-- image loaded js -->
    <script src="assets/js/plugins/imagesloaded.pkgd.min.js"></script>
    <!-- isotope filter js -->
    <script src="assets/js/plugins/isotope.pkgd.min.js"></script>
    <!-- Main JS -->
    <script src="assets/js/main.js"></script>

</body>


<!-- Mirrored from demo.hasthemes.com/adda-preview/adda/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2020 17:09:55 GMT -->
</html>