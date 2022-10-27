<%@page session="false" %>

<!doctype html>
<html class="no-js" lang="en">

<%@include file="includes/head.jsp" %>

<body>

    <%@include file="includes/header.jsp" %>

    <main>

        <div class="main-wrapper">
            <!-- profile banner area start -->
            <div class="profile-banner-large bg-img" data-bg="assets/images/banner/profile-banner.jpg">
            </div>
            <!-- profile banner area end -->

            <!-- profile menu area start -->
            <div class="profile-menu-area secondary-navigation-style bg-white">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-3">
                            <div class="profile-picture-box">
                                <figure class="profile-picture">
                                    <a href="profile.jsp">
                                        <img src="assets/images/profile/profile-1.jpg" alt="profile picture">
                                    </a>
                                </figure>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 offset-lg-1">
                            <div class="profile-menu-wrapper">
                                <div class="main-menu-inner header-top-navigation">
                                    <nav>
                                        <%@include file="includes/nav.jsp" %>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 d-none d-md-block">
                            <div class="profile-edit-panel">
                                <button class="edit-btn">edit profile</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- profile menu area end -->

            <!-- sendary menu start -->
            <div class="menu-secondary">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="secondary-menu-wrapper bg-white">
                                <div class="page-title-inner">
                                    <h4 class="page-title">about</h4>
                                </div>
                                <div class="main-menu-inner header-top-navigation">
                                    <nav>
                                        <ul class="main-menu">
                                            <li><a href="#"><span>facebook</span> <i class="flaticon-facebook"></i></a></li>
                                            <li><a href="#"><span>twitter</span> <i class="flaticon-twitter-logo-silhouette"></i></a></li>
                                            <li><a href="#"><span>google</span> <i class="flaticon-google-plus"></i></a></li>
                                            <li><a href="#"><span>pinterest</span> <i class="flaticon-pinterest"></i></a></li>
                                            <!-- <li class="d-inline-block d-md-none"><a href="profile.html">edit profile</a></li> -->
                                        </ul>
                                    </nav>
                                </div>
                                <div class="post-settings-bar">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <div class="post-settings arrow-shape">
                                        <ul>
                                            <li><button>edit profile</button></li>
                                            <li><button>activity log</button></li>
                                            <li><button>embed adda</button></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- sendary menu end -->

            <!-- about author details start -->
            <div class="about-author-details">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="card widget-item">
                                <div class="about-me">
                                    <ul class="nav flex-column about-author-menu">
                                        <li><a href="#one" data-toggle="tab" class="active">Something About Me</a></li>
                                        <li><a href="#two" data-toggle="tab">Working Zone</a></li>
                                        <li><a href="#three" data-toggle="tab">Educational Qualification</a></li>
                                        <li><a href="#four" data-toggle="tab">Work & Education</a></li>
                                        <li><a href="#five" data-toggle="tab">Friends & Family</a></li>
                                        <li><a href="#six" data-toggle="tab">Contact Details</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="about-description">
                                <div class="tab-content">
                                    <div class="tab-pane fade active show" id="one">
                                        <div class="work-zone">
                                            <div class="author-desc-title d-flex">
                                                <h6 class="author"><a href="profile.jsp">Mili Raoulin</a></h6>
                                                <div class="post-settings-bar">
                                                    <span></span>
                                                    <span></span>
                                                    <span></span>
                                                    <div class="post-settings arrow-shape">
                                                        <ul>
                                                            <li><button>copy link to adda</button></li>
                                                            <li><button>edit post</button></li>
                                                            <li><button>embed adda</button></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.</p>
                                            <p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- about author details start -->

            <!-- photo section start -->
            <div class="photo-section">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="content-box">
                                <h5 class="content-title">photos</h5>
                                <div class="content-body">
                                    <div class="row mt--30">
                                        <% for(int i=1;i<=6;i++){ %>
                                        <div class="col-sm-6 col-md-4">
                                            <div class="photo-group">
                                                <div class="gallery-toggle">
                                                    <div class="d-none product-thumb-large-view">
                                                        <img src="assets/images/photos/photo-1.jpg" alt="Photo Gallery">
                                                        <img src="assets/images/photos/photo-2.jpg" alt="Photo Gallery">
                                                        <img src="assets/images/photos/photo-3.jpg" alt="Photo Gallery">
                                                    </div>
                                                    <div class="gallery-overlay">
                                                        <img src="assets/images/photos/photo-1.jpg" alt="Photo Gallery">
                                                        <div class="view-icon"></div>
                                                    </div>
                                                    <div class="photo-gallery-caption">
                                                        <h3 class="photos-caption">office hangout (06)</h3>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <% } %>
                                        <div class="col-12">
                                            <div class="load-more text-center">
                                                <button class="load-more-btn">load more</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- photo section end -->

            <!-- photo section start -->
            <div class="friends-section">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="content-box">
                                <h5 class="content-title">friends</h5>
                                <div class="content-body">
                                    <div class="row mt--20">
                                        <% for(int i=1;i<=8;i++){ %>
                                        <div class="col-lg-3 col-sm-6">
                                            <div class="friend-list-view">
                                                <!-- profile picture end -->
                                                <div class="profile-thumb">
                                                    <a href="#">
                                                        <figure class="profile-thumb-middle">
                                                            <img src="assets/images/profile/profile-small-20.jpg" alt="profile picture">
                                                        </figure>
                                                    </a>
                                                </div>
                                                <!-- profile picture end -->

                                                <div class="posted-author">
                                                    <h6 class="author"><a href="profile.jsp">henry william</a></h6>
                                                    <button class="add-frnd">friend request sent</button>
                                                </div>
                                            </div>
                                        </div>
                                        <% } %>

                                        <% for(int i=1;i<=12;i++){ %>
                                        <div class="col-lg-3 col-sm-6">
                                            <div class="friend-list-view">
                                                <!-- profile picture end -->
                                                <div class="profile-thumb">
                                                    <a href="#">
                                                        <figure class="profile-thumb-middle">
                                                            <img src="assets/images/profile/profile-small-29.jpg" alt="profile picture">
                                                        </figure>
                                                    </a>
                                                </div>
                                                <!-- profile picture end -->

                                                <div class="posted-author">
                                                    <h6 class="author"><a href="profile.jsp">jhonsina boss</a></h6>
                                                    <button class="add-frnd">add friend</button>
                                                </div>
                                            </div>
                                        </div>
                                        <% } %>

                                        <div class="col-12">
                                            <div class="load-more text-center">
                                                <button class="load-more-btn">load more</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- photo section end -->

            <!-- favorite book section start -->
            <div class="faborite-books">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="content-box">
                                <h5 class="content-title">favorite books</h5>
                                <div class="content-body">
                                    <div class="row favorite-item-carousel">
                                        <% for(int i=1;i<=6;i++){ %>
                                        <div class="col">
                                            <figure class="favorite-item">
                                                <a href="#">
                                                    <img src="assets/images/books/book-1.jpg" alt="">
                                                </a>
                                            </figure>
                                        </div>
                                        <% } %>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="load-more text-center">
                                                <button class="load-more-btn">load more</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- favorite book section end -->

            <!-- favorite book section start -->
            <div class="faborite-books">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="content-box">
                                <h5 class="content-title">favorite sports</h5>
                                <div class="content-body">
                                    <div class="row favorite-item-carousel">
                                        <% for(int i=1;i<=6;i++){ %>
                                        <div class="col">
                                            <figure class="favorite-item">
                                                <a href="#">
                                                    <img src="assets/images/sports/sport-1.jpg" alt="">
                                                </a>
                                            </figure>
                                        </div>
                                        <% } %>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="load-more text-center">
                                                <button class="load-more-btn">load more</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- favorite book section end -->
        </div>

    </main>

    <!-- Scroll to top start -->
    <div class="scroll-top not-visible">
        <i class="bi bi-finger-index"></i>
    </div>
    <!-- Scroll to Top End -->

    <!-- footer area start -->
    <%@include file="includes/footer.jsp" %>

</body>


<!-- Mirrored from demo.hasthemes.com/adda-preview/adda/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2020 17:11:25 GMT -->
</html>