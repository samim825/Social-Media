<%@ page import="com.media.social.Social.Media.model.User" %>
<%@ page import="java.util.List" %>
<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from demo.hasthemes.com/adda-preview/adda/friends.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2020 17:11:30 GMT -->
<%@include file="includes/head.jsp" %>

<body>

<!-- header area start -->
<%@include file="includes/header.jsp" %>
<!-- header area end -->

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
                                <a href="#">
                                    <img src="assets/images/profile/profile-1.jpg" alt="profile picture">
                                </a>
                            </figure>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 offset-lg-1">
                        <div class="profile-menu-wrapper">
                            <div class="main-menu-inner header-top-navigation">
                                <nav>
                                    <ul class="main-menu">
                                        <li class="active"><a href="#">timeline</a></li>
                                        <li><a href="about">about</a></li>
                                        <li><a href="photos">photos</a></li>
                                        <li><a href="friends">friends</a></li>
                                        <li><a href="about">more</a></li>
                                        <!-- <li class="d-inline-block d-md-none"><a href="profile.html">edit profile</a></li> -->
                                    </ul>
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
                        <div class="secondary-menu-wrapper secondary-menu-2 bg-white">
                            <div class="page-title-inner">
                                <h4 class="page-title">People you may know</h4>
                            </div>
                            <div class="filter-menu">
                                <button class="active" data-filter="*">all</button>
                                <button data-filter=".recently">recently</button>
                                <button data-filter=".relative">relative</button>
                                <button data-filter=".collage">collage</button>
                                <button data-filter=".request">request</button>
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

        <!-- photo section start -->
        <div class="friends-section mt-20">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="content-box friends-zone">
                            <div class="row mt--20 friends-list">
                                <% List<User> allUser = (List<User>) request.getAttribute("existingFollower");

                                    for(User users : allUser) {
                                        String imagePath = Converter.covertPathTo64Base(users.getImage());
                                %>
                                <div class="col-lg-3 col-sm-6 recently request">
                                    <div class="friend-list-view">
                                        <!-- profile picture end -->
                                        <div class="profile-thumb">
                                            <a href="#">
                                                <figure class="profile-thumb-middle">
                                                    <img src="data:image;base64,<%=imagePath%>" alt="profile picture">
                                                </figure>
                                            </a>
                                        </div>
                                        <!-- profile picture end -->

                                        <div class="posted-author">
                                            <%=users.getFirstName()%> <%=users.getLastName()%>
                                            <a href="/update_follower/<%=users.getId()%>" class="btn btn-primary" >Follow</a>
                                        </div>
                                    </div>
                                </div>
                                <% }%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- photo section end -->
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


<!-- Mirrored from demo.hasthemes.com/adda-preview/adda/friends.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2020 17:11:30 GMT -->
</html>