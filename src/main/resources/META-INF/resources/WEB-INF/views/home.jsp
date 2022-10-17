<%@ page import="com.media.social.Social.Media.model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="com.media.social.Social.Media.model.User" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.util.Comparator" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.media.social.Social.Media.helper.DateFormatter" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
 <%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from demo.hasthemes.com/adda-preview/adda/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Jan 2020 17:10:12 GMT -->
 <%@include file="includes/head.jsp" %>

<body>

    <!-- header area start -->
      <%@include file="includes/header.jsp" %>
    <!-- header area end -->

    <main>

        <div class="main-wrapper pt-80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 order-2 order-lg-1">
                        <aside class="widget-area">
                            <!-- widget single item start -->
                            <div class="card card-profile widget-item p-0">
                                <div class="profile-banner">
                                    <figure class="profile-banner-small">
                                        <a href="profile.jsp">
                                            <img src="assets/images/banner/banner-small.jpg" alt="">
                                        </a>
                                        <a href="profile.jsp" class="profile-thumb-2">
                                            <img src="assets/images/profile/profile-midle-1.jpg" alt="">
                                        </a>
                                    </figure>
                                    <div class="profile-desc text-center">
                                        <h6 class="author"><a href="profile.jsp">Dimbel Lebmid</a></h6>
                                        <p>Any one can join with but Social network us if you want Any one can join with us if you want</p>
                                    </div>
                                </div>
                            </div>
                            <!-- widget single item start -->

                            <!-- widget single item start -->
                            <div class="card widget-item">
                                <h4 class="widget-title">page you may like</h4>
                                <div class="widget-body">
                                    <ul class="like-page-list-wrapper">
                                        <% for(int i =1;i<=4;i++){ %>
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

                            <!-- widget single item start -->
                            <div class="card widget-item">
                                <h4 class="widget-title">latest top news</h4>
                                <div class="widget-body">
                                    <ul class="like-page-list-wrapper">
                                        <% for(int i=1;i<=5;i++){ %>
                                        <li class="unorder-list">
                                            <!-- profile picture end -->
                                            <div class="profile-thumb">
                                                <a href="#">
                                                    <figure class="profile-thumb-small">
                                                        <img src="assets/images/profile/profile-small-28.jpg" alt="profile picture">
                                                    </figure>
                                                </a>
                                            </div>
                                            <!-- profile picture end -->

                                            <div class="unorder-list-info">
                                                <h3 class="list-title"><a href="#">Any one can join with us if you want</a></h3>
                                                <p class="list-subtitle">2 min ago</p>
                                            </div>
                                        </li>
                                       <% } %>
                                    </ul>
                                </div>
                            </div>
                            <!-- widget single item end -->
                        </aside>
                    </div>

                    <div class="col-lg-6 order-1 order-lg-2">
                        <!-- share box start -->
                        <div class="card card-small">
                            <div class="share-box-inner">
                                <!-- profile picture end -->
                                <div class="profile-thumb">
                                    <a href="#">
                                        <figure class="profile-thumb-middle">
                                            <img src="assets/images/profile/profile-small-37.jpg" alt="profile picture">
                                        </figure>
                                    </a>
                                </div>
                                <!-- profile picture end -->

                                <!-- share content box start -->
                                <div class="share-content-box w-100">
                                    <form class="share-text-box">
                                        <textarea name="share" class="share-text-field" aria-disabled="true" placeholder="Say Something" data-toggle="modal" data-target="#textbox" id="email"></textarea>
                                        <button class="btn-share" type="submit">share</button>
                                    </form>
                                </div>
                                <!-- share content box end -->

                                <!-- Modal start -->
                                <div class="modal fade" id="textbox" aria-labelledby="textbox">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">Share Your Mood</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <form action="/api/post" method="POST">

                                            <div class="modal-body custom-scroll">
                                                <textarea name="content" class="share-field-big custom-scroll" placeholder="Say Something"></textarea>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="post-share-btn" data-dismiss="modal">cancel</button>
                                                <button type="submit" class="post-share-btn">post</button>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- Modal end -->
                            </div>
                        </div>


                        <!-- post status start -->
<%--                        <div class="card">--%>
<%--                            <!-- post title start -->--%>
<%--                            <div class="post-title d-flex align-items-center">--%>
<%--                                <!-- profile picture end -->--%>
<%--                                <div class="profile-thumb">--%>
<%--                                    <a href="#">--%>
<%--                                        <figure class="profile-thumb-middle">--%>
<%--                                            <img src="assets/images/profile/profile-small-1.jpg" alt="profile picture">--%>
<%--                                        </figure>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                                <!-- profile picture end -->--%>

<%--                                <div class="posted-author">--%>
<%--                                    <h6 class="author"><a href="profile.jsp">merry watson</a></h6>--%>
<%--                                    <span class="post-time">20 min ago</span>--%>
<%--                                </div>--%>

<%--                                <div class="post-settings-bar">--%>
<%--                                    <span></span>--%>
<%--                                    <span></span>--%>
<%--                                    <span></span>--%>
<%--                                    <div class="post-settings arrow-shape">--%>
<%--                                        <ul>--%>
<%--                                            <li><button>copy link to adda</button></li>--%>
<%--                                            <li><button>edit post</button></li>--%>
<%--                                            <li><button>embed adda</button></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <!-- post title start -->--%>
<%--                            <div class="post-content">--%>
<%--                                <p class="post-desc">--%>
<%--                                    Many desktop publishing packages and web page editors now use Lorem Ipsum as their--%>
<%--                                    default model text, and a search for 'lorem ipsum' will uncover many web sites still--%>
<%--                                    in their infancy.--%>
<%--                                </p>--%>
<%--                                <div class="post-thumb-gallery">--%>
<%--                                    <figure class="post-thumb img-popup">--%>
<%--                                        <a href="assets/images/post/post-large-1.jpg">--%>
<%--                                            <img src="assets/images/post/post-1.jpg" alt="post image">--%>
<%--                                        </a>--%>
<%--                                    </figure>--%>
<%--                                </div>--%>
<%--                                <div class="post-meta">--%>
<%--                                    <button class="post-meta-like">--%>
<%--                                        <i class="bi bi-heart-beat"></i>--%>
<%--                                        <span>You and 201 people like this</span>--%>
<%--                                        <strong>201</strong>--%>
<%--                                    </button>--%>
<%--                                    <ul class="comment-share-meta">--%>
<%--                                        <li>--%>
<%--                                            <button class="post-comment">--%>
<%--                                                <i class="bi bi-chat-bubble"></i>--%>
<%--                                                <span>41</span>--%>
<%--                                            </button>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                            <button class="post-share">--%>
<%--                                                <i class="bi bi-share"></i>--%>
<%--                                                <span>07</span>--%>
<%--                                            </button>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <!-- post status end -->

                        <!-- post status start -->

                        <% User user = (User) request.getAttribute("user");
                            List<Post> postList = user.getPostList();
//
//                            Collections.sort(postList, Comparator.comparing(Post::getPostingDate));
                            Collections.sort(postList, (post1, post2) -> post2.getPostingDate().compareTo(post1.getPostingDate()));

//                            Collections.sort(postList, Collections.reverseOrder());
//                            assertEquals(employees, employeesSortedByDateDesc);

                            for(Post post : postList){

                                String date =  DateFormatter.findDateDifference(new Date() , post.getPostingDate());

                         %>
                        <div class="card">
                            <!-- post title start -->
                            <div class="post-title d-flex align-items-center">
                                <!-- profile picture end -->
                                <div class="profile-thumb">
                                    <a href="#">
                                        <figure class="profile-thumb-middle">
                                            <img src="assets/images/profile/profile-small-9.jpg" alt="profile picture">
                                        </figure>
                                    </a>
                                </div>
                                <!-- profile picture end -->

                                <div class="posted-author">
                                    <h6 class="author"><a href="/profile">${user.getFirstName()} ${user.getLastName()}</a></h6>
                                    <span class="post-time"><%=date %></span>
                                </div>

                                <div class="post-settings-bar">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <div class="post-settings arrow-shape">
                                        <ul>
                                            <li><button>copy link to adda</button></li>
                                            <li><button name="edit" data-id="<%=post.getId()%>" class="edit" aria-disabled="true"  data-toggle="modal" data-target="#editbox" >edit post</button></li>

                                            <li>
                                                <button  name="delete"  data-id="<%=post.getId()%>" aria-disabled="true"  data-toggle="modal" data-target="#deleteBox" class="postId" value="<%=post.getId()%>">Delete</button>
<%--                                                <input type="hidden" name="postId" class="postId" value="<%=post.getId()%>">--%>
<%--                                                <a  href="/api/delete/id/<%=post.getId()%>" >Delete</a>--%>

                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- post title start -->
                            <div class="post-content">
                                <p class="post-desc pb-0">
                                  <%=post.getContent() %>
                                </p>
                                <div class="post-meta">
                                    <button class="post-meta-like">
<%--                                        <i class="bi bi-heart-beat"></i>--%>
                                        <i class="fa fa-thumbs-up"></i>
                                        <span><%=post.getTotalLike() %> people like this</span>
                                        <strong>206</strong>
                                    </button>
                                    <ul class="comment-share-meta">
                                        <li>
                                            <a href="/#">
                                                <img src="assets/images/icons/heart-color.png">
                                            </a>
                                            <span><%=post.getTotalLike() %></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>



                        <% } %>
                        <!-- post status end -->

                        <!-- post status start -->
<%--                        <div class="card">--%>
<%--                            <!-- post title start -->--%>
<%--                            <div class="post-title d-flex align-items-center">--%>
<%--                                <!-- profile picture end -->--%>
<%--                                <div class="profile-thumb">--%>
<%--                                    <a href="#">--%>
<%--                                        <figure class="profile-thumb-middle">--%>
<%--                                            <img src="assets/images/profile/profile-small-29.jpg" alt="profile picture">--%>
<%--                                        </figure>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                                <!-- profile picture end -->--%>

<%--                                <div class="posted-author">--%>
<%--                                    <h6 class="author"><a href="profile.jsp">william henry</a></h6>--%>
<%--                                    <span class="post-time">35 min ago</span>--%>
<%--                                </div>--%>

<%--                                <div class="post-settings-bar">--%>
<%--                                    <span></span>--%>
<%--                                    <span></span>--%>
<%--                                    <span></span>--%>
<%--                                    <div class="post-settings arrow-shape">--%>
<%--                                        <ul>--%>
<%--                                            <li><button>copy link to adda</button></li>--%>
<%--                                            <li><button>edit post</button></li>--%>
<%--                                            <li><button>embed adda</button></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <!-- post title start -->--%>
<%--                            <div class="post-content">--%>
<%--                                <p class="post-desc">--%>
<%--                                    Many desktop publishing packages and web page editors now use Lorem Ipsum as their--%>
<%--                                    default model text, and a search for 'lorem ipsum' will uncover many web sites still--%>
<%--                                    in their infancy.--%>
<%--                                </p>--%>
<%--                                <div class="plyr__video-embed plyr-youtube">--%>
<%--                                    <iframe src="https://www.youtube.com/embed/WeA7edXsU40" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>--%>
<%--                                </div>--%>
<%--                                <div class="post-meta">--%>
<%--                                    <button class="post-meta-like">--%>
<%--                                        <i class="bi bi-heart-beat"></i>--%>
<%--                                        <span>You and 112 people like this</span>--%>
<%--                                        <strong>112</strong>--%>
<%--                                    </button>--%>
<%--                                    <ul class="comment-share-meta">--%>
<%--                                        <li>--%>
<%--                                            <button class="post-comment">--%>
<%--                                                <i class="bi bi-chat-bubble"></i>--%>
<%--                                                <span>36</span>--%>
<%--                                            </button>--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                            <button class="post-share">--%>
<%--                                                <i class="bi bi-share"></i>--%>
<%--                                                <span>08</span>--%>
<%--                                            </button>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <!-- post status end -->

                        <!-- post status start -->
                       

                    </div>


                    <!-- Edit Modal start -->
                    <div class="modal fade" id="editbox" aria-labelledby="textbox">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Edit and Share Your Mood</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="/api/post/edit" method="POST">

                                    <input type="hidden" name="id" id="edit-id">
                                    <div class="modal-body custom-scroll">
                                        <%--                                            <textarea> name="content" class="share-field-big custom-scroll" value="" </textarea>--%>
                                        <textarea name="content" class="share-field-big custom-scroll" id="edit-content">  </textarea>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="post-share-btn" data-dismiss="modal">cancel</button>
                                        <button type="submit" class="post-share-btn">Edit</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Edit modal end -->


                    <!-- Delete Modal start -->
                    <div class="modal fade" id="deleteBox" aria-labelledby="textbox">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Are you sure you want to delete this post?</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="post-share-btn" data-dismiss="modal">cancel</button>
                                    <button  class="post-share-btn" id="post-delete">Delete</button>
                                </div>


                            </div>
                        </div>
                    </div>
                    <!-- Delete modal end -->



                    <div class="col-lg-3 order-3">
                        <aside class="widget-area">
                            <!-- widget single item start -->
                            <div class="card widget-item">
                                <h4 class="widget-title">Recent Notifications</h4>
                                <div class="widget-body">
                                    <ul class="like-page-list-wrapper">
                                        <% for(int i=1;i<=5;i++){ %>
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
                                                        <img src="assets/images/profile/profile-small-33.jpg" alt="profile picture">
                                                    </figure>
                                                </a>
                                            </div>
                                            <!-- profile picture end -->

                                            <div class="unorder-list-info">
                                                <h3 class="list-title"><a href="#">Ammeya Jakson</a></h3>
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


</html>

<script>
$(document).ready(function () {

    $('.postId').click(function () {
        let id = $(this).attr('data-id');
        console.log("Delete data with id : ", id);
        // $('.post-delete').setAttribute("value",id);
        document.getElementById("post-delete").setAttribute("value",id);
    });

    $('#post-delete').click(function (){
        let id = $(this).attr("value");


        $.ajax({
                    url: '/api/post/id/'+id,
                    method: 'DELETE',
                    contentType: 'application/json',
                    success: function(html) {
                       location.reload();
                        // handle success
                    },
                    error: function(request,msg,error) {
                        // handle failure
                    }
                });
        });

    $('.edit').click(function (){

        let id = $(this).attr('data-id');
        console.log("Edit data with id : ",id);

        $.ajax({
            url: '/api/post/id/'+id,
            method: 'GET',
            contentType: 'application/json',
            success: function(post) {
                // handle success
                document.getElementById("edit-id").setAttribute("value",post.id);
                document.getElementById("edit-content").value = post.content;
                console.log(post.content);
            },
            error: function(request,msg,error) {
                // handle failure
            }
        });
    });

    });


</script>