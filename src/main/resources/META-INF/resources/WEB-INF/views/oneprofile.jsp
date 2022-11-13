<%@ page import="com.media.social.Social.Media.model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="com.media.social.Social.Media.helper.DateFormatter" %>
<%@ page import="java.util.Date" %>
<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from demo.hasthemes.com/adda-preview/adda/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2020 17:10:49 GMT -->
<%@include file="includes/head.jsp" %>

<body>

<!-- header area start -->

<%@ page import="com.media.social.Social.Media.model.User" %>
<%@ page import="com.media.social.Social.Media.helper.Converter" %>
<!-- header area start -->
<header>
    <div class="header-top sticky bg-white d-none d-lg-block">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-5">
                    <!-- header top navigation start -->
                    <div class="header-top-navigation">
                        <nav>
                            <ul>
                                <li class="active"><a href="/">home</a></li>

                                <li ><a href="/userlist">Peoples</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- header top navigation start -->
                </div>

                <div class="col-md-2">
                    <!-- brand logo start -->
                    <div class="brand-logo text-center">
                        <a href="/">
                            <img src="assets/images/logo/logo.png" alt="brand logo">
                        </a>
                    </div>
                    <!-- brand logo end -->
                </div>

                <div class="col-md-5">
                    <div class="header-top-right d-flex align-items-center justify-content-end">
                        <!-- header top search start -->
                        <div class="header-top-search">
                            <form class="top-search-box">
                                <input type="text" placeholder="Search" class="top-search-field">
                                <button class="top-search-btn"><i class="flaticon-search"></i></button>
                            </form>
                        </div>
                        <!-- header top search end -->

                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header area end -->

<!-- header area end -->

<main>

    <div class="main-wrapper">
        <div class="profile-banner-large bg-img" data-bg="assets/images/banner/profile-banner.jpg">
        </div>
        <div class="profile-menu-area bg-white">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-3">
                        <div class="profile-picture-box">
                            <figure class="profile-picture">
                                <a href="profile.jsp">
                                    <%
                                        User user2 = (User) request.getAttribute("user");
                                        String path = Converter.covertPathTo64Base(user2.getImage());

//                                String path = Converter.covertPathTo64Base("/home/samimhossain/Pictures/Screenshots/image.jpg");


                                    %>
                                    <img src="data:image;base64,<%=path%>" alt="profile picture">
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
                                        <li><a href="/about">about</a></li>
                                        <li><a href="/photos">photos</a></li>
                                        <li><a href="/friends/<%=user2.getId()%>">friends</a></li>
                                        <li><a href="#">more</a></li>
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
        <div class="container">
            <div class="row">
                <div class="col-lg-3 order-2 order-lg-1">
                    <aside class="widget-area profile-sidebar">

                        <!-- widget single item start -->
                        <div class="card widget-item">
                            <h4 class="widget-title">kate palson</h4>
                            <div class="widget-body">
                                <div class="about-author">
                                    <p>I Don?t know how? But i believe that it is possible one day if i stay with my dream all time</p>
                                    <ul class="author-into-list">
                                        <li><a href="#"><i class="bi bi-office-bag"></i>Graphic Designer</a></li>
                                        <li><a href="#"><i class="bi bi-home"></i>Melbourne, Australia</a></li>
                                        <li><a href="#"><i class="bi bi-location-pointer"></i>Pulshar, Melbourne</a></li>
                                        <li><a href="#"><i class="bi bi-heart-beat"></i>Travel, Swimming</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- widget single item end -->

                        <!-- widget single item start -->
                        <div class="card widget-item">
                            <h4 class="widget-title">Sweets Memories</h4>
                            <div class="widget-body">
                                <div class="sweet-galley img-gallery">
                                    <div class="row row-5">
                                        <% for(int i=1;i<=9;i++){ %>
                                        <div class="col-4">
                                            <div class="gallery-tem">
                                                <figure class="post-thumb">
                                                    <a class="gallery-selector" href="assets/images/gallery/gallery-1.jpg">
                                                        <img src="assets/images/gallery/gallery-1.jpg" alt="sweet memory">
                                                    </a>
                                                </figure>
                                            </div>
                                        </div>
                                        <% } %>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- widget single item end -->

                        <!-- widget single item start -->
                        <div class="card widget-item">
                            <h4 class="widget-title">page you may like</h4>
                            <div class="widget-body">
                                <ul class="like-page-list-wrapper">
                                    <% for(int i=1;i<=4;i++){ %>
                                    <li class="unorder-list">
                                        <!-- profile picture end -->
                                        <div class="profile-thumb">
                                            <a href="#">
                                                <figure class="profile-thumb-small">
                                                    <img src="assets/images/profile/profile-small-33.jpg" alt="profile picture">
                                                </figure>
                                            </a>
                                        </div>
                                        <!-- profile picture end -->

                                        <div class="unorder-list-info">
                                            <h3 class="list-title"><a href="#">Travel The World</a></h3>
                                            <p class="list-subtitle"><a href="#">adventure</a></p>
                                        </div>
                                        <button class="like-button active">
                                            <img class="heart" src="assets/images/icons/heart.png" alt="">
                                            <img class="heart-color" src="assets/images/icons/heart-color.png" alt="">
                                        </button>
                                    </li>
                                    <% } %>
                                </ul>
                            </div>
                        </div>
                        <!-- widget single item end -->
                    </aside>
                </div>

                <div class="col-lg-6 order-1 order-lg-2">
                    <% List<Post> postList = (List<Post>) request.getAttribute("posts");
//
//                            Collections.sort(postList, Comparator.comparing(Post::getPostingDate));
                        Collections.sort(postList, (post1, post2) -> post2.getPostingDate().compareTo(post1.getPostingDate()));
//                            Collections.sort(postList, Collections.reverseOrder());
//                            assertEquals(employees, employeesSortedByDateDesc);
                        for(Post post : postList){
                            String date =  DateFormatter.findDateDifference(new Date() , post.getPostingDate());

                            User user1 = post.getUserId();
                            String photopath = Converter.covertPathTo64Base(user1.getImage());
                    %>
                    <div class="card">
                        <!-- post title start -->
                        <div class="post-title d-flex align-items-center">
                            <!-- profile picture end -->
                            <div class="profile-thumb">
                                <a href="#">
                                    <figure class="profile-thumb-middle">
                                        <img src="data:image;base64,<%=photopath%>" alt="profile picture">
                                    </figure>
                                </a>
                            </div>
                            <!-- profile picture end -->

                            <div class="posted-author">
                                <h6 class="author"><a href="/profile"><%=user1.getFirstName()%> <%=user1.getLastName() %></a></h6>
                                <span class="post-time"><%=date %></span>
                            </div>


                        </div>
                        <!-- post title start -->
                        <div class="post-content">
                            <p class="post-desc pb-0">
                                <%=post.getContent() %>
                            </p>
                            <div class="post-meta">
                                <button class="post-meta-like" >
                                    <%--                                        <i class="bi bi-heart-beat"></i>--%>
                                    <i class="fa fa-thumbs-up"></i>
                                    <span ><%=post.getTotalLike().size() %> people like this</span>
                                    <strong>206</strong>
                                </button>
                                <ul class="comment-share-meta">
                                    <li>
                                        <a href="/api/post/like/<%=post.getId()%>" >
                                            <img src="assets/images/icons/heart-color.png">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>



                    <% }

                        postList.clear();
                    %>
                </div>
                <div class="col-lg-3 order-3">
                    <aside class="widget-area">
                        <!-- widget single item start -->
                        <div class="card widget-item">
                            <h4 class="widget-title">Recent Notifications</h4>
                            <div class="widget-body">
                                <ul class="like-page-list-wrapper">
                                    <% for(int i=1;i<=4;i++){ %>
                                    <li class="unorder-list">
                                        <!-- profile picture end -->
                                        <div class="profile-thumb">
                                            <a href="#">
                                                <figure class="profile-thumb-small">
                                                    <img src="assets/images/profile/profile-small-9.jpg" alt="profile picture">
                                                </figure>
                                            </a>
                                        </div>
                                        <!-- profile picture end -->

                                        <div class="unorder-list-info">
                                            <h3 class="list-title"><a href="#">Any one can join with us if you want</a></h3>
                                            <p class="list-subtitle">5 min ago</p>
                                        </div>
                                    </li>
                                    <% } %>
                                </ul>
                            </div>
                        </div>
                        <!-- widget single item end -->

                        <!-- widget single item start -->
                        <div class="card widget-item">
                            <h4 class="widget-title">Advertizement</h4>
                            <div class="widget-body">
                                <div class="add-thumb">
                                    <a href="#">
                                        <img src="assets/images/banner/advertise.jpg" alt="advertisement">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- widget single item end -->

                        <!-- widget single item start -->
                        <div class="card widget-item">
                            <h4 class="widget-title">Friends Zone</h4>
                            <div class="widget-body">
                                <ul class="like-page-list-wrapper">
                                    <% for(int i=1;i<=4;i++){ %>
                                    <li class="unorder-list">
                                        <!-- profile picture end -->
                                        <div class="profile-thumb">
                                            <a href="#">
                                                <figure class="profile-thumb-small">
                                                    <img src="assets/images/profile/profile-small-10.jpg" alt="profile picture">
                                                </figure>
                                            </a>
                                        </div>
                                        <!-- profile picture end -->

                                        <div class="unorder-list-info">
                                            <h3 class="list-title"><a href="#">arfim bolt</a></h3>
                                            <p class="list-subtitle"><a href="#">10 mutual</a></p>
                                        </div>
                                        <button class="like-button">
                                            <img class="heart" src="assets/images/icons/heart.png" alt="">
                                            <img class="heart-color" src="assets/images/icons/heart-color.png" alt="">
                                        </button>
                                    </li>
                                    <% } %>
                                </ul>
                            </div>
                        </div>
                        <!-- widget single item end -->
                    </aside>

                    <!-- Modal start -->
                    <div class="modal fade" id="updateProfilePicture" aria-labelledby="textbox">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Share Your Mood</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Modal end -->
                </div>
            </div>
        </div>
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


<!-- Mirrored from demo.hasthemes.com/adda-preview/adda/profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2020 17:11:01 GMT -->
</html>
