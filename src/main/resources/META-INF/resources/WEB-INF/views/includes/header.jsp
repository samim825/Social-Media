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
                                    <li class="msg-trigger"><a class="msg-trigger-btn" href="#a">message</a>
                                        <div class="message-dropdown" id="a">
                                            <div class="dropdown-title">
                                                <p class="recent-msg">recent message</p>
                                                <div class="message-btn-group">
                                                    <button>New group</button>
                                                    <button>New Message</button>
                                                </div>
                                            </div>
                                            <ul class="dropdown-msg-list">
                                                <li class="msg-list-item d-flex justify-content-between">
                                                    <!-- profile picture end -->
                                                    <div class="profile-thumb">
                                                        <figure class="profile-thumb-middle">
                                                            <img src="assets/images/profile/profile-small-3.jpg" alt="profile picture">
                                                        </figure>
                                                    </div>
                                                    <!-- profile picture end -->

                                                    <!-- message content start -->
                                                    <div class="msg-content">
                                                        <h6 class="author"><a href="/profile">Mili Raoulin</a></h6>
                                                        <p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default</p>
                                                    </div>
                                                    <!-- message content end -->

                                                    <!-- message time start -->
                                                    <div class="msg-time">
                                                        <p>25 Apr 2019</p>
                                                    </div>
                                                    <!-- message time end -->
                                                </li>
                                                <li class="msg-list-item d-flex justify-content-between">
                                                    <!-- profile picture end -->
                                                    <div class="profile-thumb">
                                                        <figure class="profile-thumb-middle">
                                                            <img src="assets/images/profile/profile-small-4.jpg" alt="profile picture">
                                                        </figure>
                                                    </div>
                                                    <!-- profile picture end -->

                                                    <!-- message content start -->
                                                    <div class="msg-content">
                                                        <h6 class="author"><a href="/profile">Jhon Doe</a></h6>
                                                        <p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default</p>
                                                    </div>
                                                    <!-- message content end -->

                                                    <!-- message time start -->
                                                    <div class="msg-time">
                                                        <p>15 May 2019</p>
                                                    </div>
                                                    <!-- message time end -->
                                                </li>
                                                <li class="msg-list-item d-flex justify-content-between">
                                                    <!-- profile picture end -->
                                                    <div class="profile-thumb">
                                                        <figure class="profile-thumb-middle">
                                                            <img src="assets/images/profile/profile-small-5.jpg" alt="profile picture">
                                                        </figure>
                                                    </div>
                                                    <!-- profile picture end -->

                                                    <!-- message content start -->
                                                    <div class="msg-content">
                                                        <h6 class="author"><a href="/profile">Jon Wileyam</a></h6>
                                                        <p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default</p>
                                                    </div>
                                                    <!-- message content end -->

                                                    <!-- message time start -->
                                                    <div class="msg-time">
                                                        <p>20 Jun 2019</p>
                                                    </div>
                                                    <!-- message time end -->
                                                </li>
                                            </ul>
                                            <div class="msg-dropdown-footer">
                                                <button>See all in messenger</button>
                                                <button>Mark All as Read</button>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="notification-trigger"><a class="msg-trigger-btn" href="#b">notification</a>
                                        <div class="message-dropdown" id="b">
                                            <div class="dropdown-title">
                                                <p class="recent-msg">Notification</p>
                                                <button>
                                                    <i class="flaticon-settings"></i>
                                                </button>
                                            </div>
                                            <ul class="dropdown-msg-list">
                                                <li class="msg-list-item d-flex justify-content-between">
                                                    <!-- profile picture end -->
                                                    <div class="profile-thumb">
                                                        <figure class="profile-thumb-middle">
                                                            <img src="assets/images/profile/profile-small-3.jpg" alt="profile picture">
                                                        </figure>
                                                    </div>
                                                    <!-- profile picture end -->

                                                    <!-- message content start -->
                                                    <div class="msg-content notification-content">
                                                        <a href="/profile">Robert Faul</a>,
                                                        <a href="/profile">william jhon</a>
                                                        <p>and 35 other people reacted to your photo</p>
                                                    </div>
                                                    <!-- message content end -->

                                                    <!-- message time start -->
                                                    <div class="msg-time">
                                                        <p>25 Apr 2019</p>
                                                    </div>
                                                    <!-- message time end -->
                                                </li>
                                                <li class="msg-list-item d-flex justify-content-between">
                                                    <!-- profile picture end -->
                                                    <div class="profile-thumb">
                                                        <figure class="profile-thumb-middle">
                                                            <img src="assets/images/profile/profile-small-4.jpg" alt="profile picture">
                                                        </figure>
                                                    </div>
                                                    <!-- profile picture end -->

                                                    <!-- message content start -->
                                                    <div class="msg-content notification-content">
                                                        <a href="/profile">Robert mushkil</a>,
                                                        <a href="/profile">Terry jhon</a>
                                                        <p>and 20 other people reacted to your photo</p>
                                                    </div>
                                                    <!-- message content end -->

                                                    <!-- message time start -->
                                                    <div class="msg-time">
                                                        <p>20 May 2019</p>
                                                    </div>
                                                    <!-- message time end -->
                                                </li>
                                                <li class="msg-list-item d-flex justify-content-between">
                                                    <!-- profile picture end -->
                                                    <div class="profile-thumb">
                                                        <figure class="profile-thumb-middle">
                                                            <img src="assets/images/profile/profile-small-6.jpg" alt="profile picture">
                                                        </figure>
                                                    </div>
                                                    <!-- profile picture end -->

                                                    <!-- message content start -->
                                                    <div class="msg-content notification-content">
                                                        <a href="/profile">Horijon Mbala</a>,
                                                        <a href="/profile">Bashu jhon</a>
                                                        <p>and 55 other people reacted to your post</p>
                                                    </div>
                                                    <!-- message content end -->

                                                    <!-- message time start -->
                                                    <div class="msg-time">
                                                        <p>15 Jan 2019</p>
                                                    </div>
                                                    <!-- message time end -->
                                                </li>
                                            </ul>
                                            <div class="msg-dropdown-footer">
                                                <button>See all in messenger</button>
                                                <button>Mark All as Read</button>
                                            </div>
                                        </div>
                                    </li>
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
                            <%
                                User user2 = (User) request.getAttribute("user");
                                String path = Converter.covertPathTo64Base(user2.getImage());

//                                String path = Converter.covertPathTo64Base("/home/samimhossain/Pictures/Screenshots/image.jpg");


                            %>

                            <!-- profile picture start -->
                            <div class="profile-setting-box">
                                <div class="profile-thumb-small">
                                    <a href="javascript:void(0)" class="profile-triger">
                                        <figure>
                                            <img src="data:image;base64,<%=path%>" alt="profile picture">
                                        </figure>
                                    </a>
                                    <div class="profile-dropdown">
                                        <div class="profile-head">
                                            <h5 class="name"><a href="#">${user.getFirstName()} ${user.getLastName()}</a></h5>

                                            <a class="mail" href="#">${user.getEmail()}</a>
                                        </div>
                                        <div class="profile-body">
                                            <ul>
                                                <li><a href="/profile"><i class="flaticon-user"></i>Profile</a></li>
                                                <li><a href="#"><i class="flaticon-message"></i>Inbox</a></li>
                                                <li><a href="#"><i class="flaticon-document"></i>Activity</a></li>
                                            </ul>
                                            <ul>
                                                <li><a href="#"><i class="flaticon-settings"></i>Setting</a></li>
                                                <li><a href="/logout"><i class="flaticon-unlock"></i>Log out</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- profile picture end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header area end -->
     