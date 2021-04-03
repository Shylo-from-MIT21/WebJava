<%-- 
    Document   : home_page
    Created on : 10 ????. 2021 ?., 20:13:35
    Author     : ??????????
--%>
<%@page import="org.obrii.mit.dp2021.shyloivan.dbproject.DataClass"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Table</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script defer src="general\themeNavbar.js"></script>

    <link rel="stylesheet" href="general\reset.css" />
    <link rel="stylesheet" href="general\style.css" />




    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700&display=swap" rel="stylesheet" />
</head>

<body>
    <!-- NAVBAR START -->
    <nav class="navbar">
        <ul class="navbar-nav">
            <li class="logo">
                <a class="nav-link">
                    <span class="link-text logo-text">Menu</span>
                    <svg aria-hidden="true" focusable="false" data-prefix="fad" data-icon="angle-double-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="svg-inline--fa fa-angle-double-right fa-w-14 fa-5x">
                  <g class="fa-group">
                    <path
                      fill="currentColor"
                      d="M224 273L88.37 409a23.78 23.78 0 0 1-33.8 0L32 386.36a23.94 23.94 0 0 1 0-33.89l96.13-96.37L32 159.73a23.94 23.94 0 0 1 0-33.89l22.44-22.79a23.78 23.78 0 0 1 33.8 0L223.88 239a23.94 23.94 0 0 1 .1 34z"
                      class="fa-secondary"
                    ></path>
                    <path
                      fill="currentColor"
                      d="M415.89 273L280.34 409a23.77 23.77 0 0 1-33.79 0L224 386.26a23.94 23.94 0 0 1 0-33.89L320.11 256l-96-96.47a23.94 23.94 0 0 1 0-33.89l22.52-22.59a23.77 23.77 0 0 1 33.79 0L416 239a24 24 0 0 1-.11 34z"
                      class="fa-primary"
                    ></path>
                  </g>
                </svg>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="location_page.html">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="map-marked-alt" class="svg-inline--fa fa-map-marked-alt fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                    <g class="fa-group">
                    <path fill="currentColor" d="M288 0c-69.59 0-126 56.41-126 126 0 56.26 82.35 158.8 113.9 196.02 6.39 7.54 17.82 7.54 24.2 0C331.65 284.8 414 182.26 414 126 414 56.41 357.59 0 288 0zm0 168c-23.2 0-42-18.8-42-42s18.8-42 42-42 42 18.8 42 42-18.8 42-42 42zM20.12 215.95A32.006 32.006 0 0 0 0 245.66v250.32c0 11.32 11.43 19.06 21.94 14.86L160 448V214.92c-8.84-15.98-16.07-31.54-21.25-46.42L20.12 215.95zM288 359.67c-14.07 0-27.38-6.18-36.51-16.96-19.66-23.2-40.57-49.62-59.49-76.72v182l192 64V266c-18.92 27.09-39.82 53.52-59.49 76.72-9.13 10.77-22.44 16.95-36.51 16.95zm266.06-198.51L416 224v288l139.88-55.95A31.996 31.996 0 0 0 576 426.34V176.02c0-11.32-11.43-19.06-21.94-14.86z"
                    class="fa-secondary"
                    ></path>
                    </g>
                    </svg>
                    <span class="link-text">Location</span></a>
            </li>

            <li class="nav-item">
                <a href="calendar_page.html" class="nav-link">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="calendar-alt" class="svg-inline--fa fa-calendar-alt fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                  <g class="fa-group">
                    
                    <path fill="currentColor" 
                    d="M0 464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V192H0v272zm320-196c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zm0 128c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zM192 268c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zm0 128c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12h-40c-6.6 0-12-5.4-12-12v-40zM64 268c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12H76c-6.6 0-12-5.4-12-12v-40zm0 128c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12H76c-6.6 0-12-5.4-12-12v-40zM400 64h-48V16c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v48H160V16c0-8.8-7.2-16-16-16h-32c-8.8 0-16 7.2-16 16v48H48C21.5 64 0 85.5 0 112v48h448v-48c0-26.5-21.5-48-48-48z"
                    class="fa-secondary">
                </path>
            </g>
                </svg>
                    <span class="link-text">Schedule</span>
                </a>
            </li>

            <li class="nav-item">
                <a href="info_page.html" class="nav-link">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="info-circle" class="svg-inline--fa fa-info-circle fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                    <g class="fa-group">
                    <path fill="currentColor" 
                    d="M256 8C119.043 8 8 119.083 8 256c0 136.997 111.043 248 248 248s248-111.003 248-248C504 119.083 392.957 8 256 8zm0 110c23.196 0 42 18.804 42 42s-18.804 42-42 42-42-18.804-42-42 18.804-42 42-42zm56 254c0 6.627-5.373 12-12 12h-88c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h12v-64h-12c-6.627 0-12-5.373-12-12v-24c0-6.627 5.373-12 12-12h64c6.627 0 12 5.373 12 12v100h12c6.627 0 12 5.373 12 12v24z"
                    class="fa-secondary"></path>
                    </g>
                    </svg>
                    <span class="link-text">Info</span>
                </a>
            </li>

            <li class="nav-item" id="themeButton">
                <a href="#" class="nav-link">
                    <svg class="theme-icon" id="darkIcon" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="moon" class="svg-inline--fa fa-moon fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                      <g class="fa-group">
                        <path fill="currentColor" d="M283.211 512c78.962 0 151.079-35.925 198.857-94.792 7.068-8.708-.639-21.43-11.562-19.35-124.203 23.654-238.262-71.576-238.262-196.954 0-72.222 38.662-138.635 101.498-174.394 9.686-5.512 7.25-20.197-3.756-22.23A258.156 258.156 0 0 0 283.211 0c-141.309 0-256 114.511-256 256 0 141.309 114.511 256 256 256z"
                        class="fa-secondary"
                      ></path>
                  </g>
                </svg>
                    <svg class="theme-icon" id="lightIcon" aria-hidden="true" focusable="false" data-prefix="fad" data-icon="sun" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="svg-inline--fa fa-sun fa-w-16 fa-7x">
                  <g class="fa-group">
                    <path
                      fill="currentColor"
                      d="M502.42 240.5l-94.7-47.3 33.5-100.4c4.5-13.6-8.4-26.5-21.9-21.9l-100.4 33.5-47.41-94.8a17.31 17.31 0 0 0-31 0l-47.3 94.7L92.7 70.8c-13.6-4.5-26.5 8.4-21.9 21.9l33.5 100.4-94.7 47.4a17.31 17.31 0 0 0 0 31l94.7 47.3-33.5 100.5c-4.5 13.6 8.4 26.5 21.9 21.9l100.41-33.5 47.3 94.7a17.31 17.31 0 0 0 31 0l47.31-94.7 100.4 33.5c13.6 4.5 26.5-8.4 21.9-21.9l-33.5-100.4 94.7-47.3a17.33 17.33 0 0 0 .2-31.1zm-155.9 106c-49.91 49.9-131.11 49.9-181 0a128.13 128.13 0 0 1 0-181c49.9-49.9 131.1-49.9 181 0a128.13 128.13 0 0 1 0 181z"
                      class="fa-secondary"
                    ></path>
                    <path
                      fill="currentColor"
                      d="M352 256a96 96 0 1 1-96-96 96.15 96.15 0 0 1 96 96z"
                      class="fa-primary"
                    ></path>
                  </g>
              
                    <span class="link-text">Theme</span>
                </a>
            </li>
        </ul>
    </nav>
    <!-- NAVBAR END-->
    <header>

        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
        <style type="text/css">
	.st0{fill:#FF3D00;}
	.st1{fill:#C30000;}
	.st2{fill:#FF7539;}
</style>

<path class="st0" d="M411.8,287.2V473h33.4V287.7C433.7,287.7,427.8,287.2,411.8,287.2z"/>
<path class="st1" d="M178.1,274.6V473h33.4V372.9c41.9,0,77-28.9,86.5-67.9C298,305,254.1,245.6,178.1,274.6z"/>
<g>
	<path class="st1" d="M467.4,83.5l-15.9,12.9l-17.3-12.9h-22.4V72.3c0-18.4-15-33.4-33.4-33.4v44.5l-55.7,81.8L295,233.7l27.8,76.5
		l22.3,4.7V473h33.4V318.7c11.9-0.4,23.2-2.8,33.4-6.9c13-5.3,24.4-13.5,33.4-24c14-16.4,22.3-38.4,22.3-64v-88.3L512,128V83.5
		H467.4z"/>
    <polygon class="st1" points="467.5,83.4 434.1,83.4 434.2,83.5 467.4,83.5 	"/>
</g>
<path class="st2" d="M233.7,174.4l-52.3,51.1c0,2.5,52.2,63.3,52,65.8L298,305l24.8,5.2v-145L233.7,174.4z"/>
<path class="st0" d="M0,198.8c22,30.3,59.1,48.3,98.9,44.1c16.8-1.8,32.3-7.3,45.7-15.6v89.9h-33.4V473h33.4V372.9
c11.8,0,23.1-2.3,33.4-6.5c30.4-12.3,52.4-40.9,55.3-75c0.2-2.5,0.3-5,0.3-7.6V174.4L0,198.8z"/>
<path class="st2" d="M467.5,83.4h-33.4H467.5z"/>
<path class="st2" d="M434.1,38.9v44.5h33.4V72.3C467.5,53.9,452.5,38.9,434.1,38.9z"/>
</svg>

                    <a class="nav-link" href="home_page.html">
                        <h1>Wolfpack Club
                        </h1>
                    </a>
                    </header>
                    <aside>
                        <div class="aside-container">

                            <a class="nav-link" href="#">Navigation
                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="angle-left" class="svg-inline--fa fa-angle-left fa-w-8" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512">
                  <g class="fa-group">
                    <path fill="currentColor" d="M31.7 239l136-136c9.4-9.4 24.6-9.4 33.9 0l22.6 22.6c9.4 9.4 9.4 24.6 0 33.9L127.9 256l96.4 96.4c9.4 9.4 9.4 24.6 0 33.9L201.7 409c-9.4 9.4-24.6 9.4-33.9 0l-136-136c-9.5-9.4-9.5-24.6-.1-34z"
                    class="fa-secondary"
                    ></path>
                  </g>
              </svg>
            </a>
                        </div>
                        <ul class="dropdown">
                            <li class="dropdown-item">
                                <a href="filler_page.html" class="nav-link"><svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="address-book" class="svg-inline--fa fa-address-book fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                <g class="fa-group">
                <path fill="currentColor" 
                d="M436 160c6.6 0 12-5.4 12-12v-40c0-6.6-5.4-12-12-12h-20V48c0-26.5-21.5-48-48-48H48C21.5 0 0 21.5 0 48v416c0 26.5 21.5 48 48 48h320c26.5 0 48-21.5 48-48v-48h20c6.6 0 12-5.4 12-12v-40c0-6.6-5.4-12-12-12h-20v-64h20c6.6 0 12-5.4 12-12v-40c0-6.6-5.4-12-12-12h-20v-64h20zm-68 304H48V48h320v416zM208 256c35.3 0 64-28.7 64-64s-28.7-64-64-64-64 28.7-64 64 28.7 64 64 64zm-89.6 128h179.2c12.4 0 22.4-8.6 22.4-19.2v-19.2c0-31.8-30.1-57.6-67.2-57.6-10.8 0-18.7 8-44.8 8-26.9 0-33.4-8-44.8-8-37.1 0-67.2 25.8-67.2 57.6v19.2c0 10.6 10 19.2 22.4 19.2z"
                class="fa-primary"
                ></path>
                </g>
                </svg>About us</a>
                            </li>
                            <li class="dropdown-item">
                                <a href="filler_page.html" class="nav-link">
                                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="dice-d20" class="svg-inline--fa fa-dice-d20 fa-w-15" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 480 512">
              <g class="fa-group">
                <path
                fill="currentColor" 
                d="M106.75 215.06L1.2 370.95c-3.08 5 .1 11.5 5.93 12.14l208.26 22.07-108.64-190.1zM7.41 315.43L82.7 193.08 6.06 147.1c-2.67-1.6-6.06.32-6.06 3.43v162.81c0 4.03 5.29 5.53 7.41 2.09zM18.25 423.6l194.4 87.66c5.3 2.45 11.35-1.43 11.35-7.26v-65.67l-203.55-22.3c-4.45-.5-6.23 5.59-2.2 7.57zm81.22-257.78L179.4 22.88c4.34-7.06-3.59-15.25-10.78-11.14L17.81 110.35c-2.47 1.62-2.39 5.26.13 6.78l81.53 48.69zM240 176h109.21L253.63 7.62C250.5 2.54 245.25 0 240 0s-10.5 2.54-13.63 7.62L130.79 176H240zm233.94-28.9l-76.64 45.99 75.29 122.35c2.11 3.44 7.41 1.94 7.41-2.1V150.53c0-3.11-3.39-5.03-6.06-3.43zm-93.41 18.72l81.53-48.7c2.53-1.52 2.6-5.16.13-6.78l-150.81-98.6c-7.19-4.11-15.12 4.08-10.78 11.14l79.93 142.94zm79.02 250.21L256 438.32v65.67c0 5.84 6.05 9.71 11.35 7.26l194.4-87.66c4.03-1.97 2.25-8.06-2.2-7.56zm-86.3-200.97l-108.63 190.1 208.26-22.07c5.83-.65 9.01-7.14 5.93-12.14L373.25 215.06zM240 208H139.57L240 383.75 340.43 208H240z"
                class="fa-primary">
            </path>
         </g>
            </svg>Our Games

                                </a>
                            </li>

                            <li class="dropdown-item">
                                <a href="filler_page.html" class="nav-link">
                                    <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="newspaper" class="svg-inline--fa fa-newspaper fa-w-18" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                <g class="fa-group">
                <path fill="currentColor" 
                d="M552 64H112c-20.858 0-38.643 13.377-45.248 32H24c-13.255 0-24 10.745-24 24v272c0 30.928 25.072 56 56 56h496c13.255 0 24-10.745 24-24V88c0-13.255-10.745-24-24-24zM48 392V144h16v248c0 4.411-3.589 8-8 8s-8-3.589-8-8zm480 8H111.422c.374-2.614.578-5.283.578-8V112h416v288zM172 280h136c6.627 0 12-5.373 12-12v-96c0-6.627-5.373-12-12-12H172c-6.627 0-12 5.373-12 12v96c0 6.627 5.373 12 12 12zm28-80h80v40h-80v-40zm-40 140v-24c0-6.627 5.373-12 12-12h136c6.627 0 12 5.373 12 12v24c0 6.627-5.373 12-12 12H172c-6.627 0-12-5.373-12-12zm192 0v-24c0-6.627 5.373-12 12-12h104c6.627 0 12 5.373 12 12v24c0 6.627-5.373 12-12 12H364c-6.627 0-12-5.373-12-12zm0-144v-24c0-6.627 5.373-12 12-12h104c6.627 0 12 5.373 12 12v24c0 6.627-5.373 12-12 12H364c-6.627 0-12-5.373-12-12zm0 72v-24c0-6.627 5.373-12 12-12h104c6.627 0 12 5.373 12 12v24c0 6.627-5.373 12-12 12H364c-6.627 0-12-5.373-12-12z"
                class="fa-primary"
                ></path>
                </g>
                </svg> Publications
                                </a>
                            </li>
                            <li class="dropdown-item">
                                <a href="subscription_page.html" class="nav-link">
                                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="bell" class="svg-inline--fa fa-bell fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                    <g class="fa-group">
                    <path fill="currentColor" d="M224 512c35.32 0 63.97-28.65 63.97-64H160.03c0 35.35 28.65 64 63.97 64zm215.39-149.71c-19.32-20.76-55.47-51.99-55.47-154.29 0-77.7-54.48-139.9-127.94-155.16V32c0-17.67-14.32-32-31.98-32s-31.98 14.33-31.98 32v20.84C118.56 68.1 64.08 130.3 64.08 208c0 102.3-36.15 133.53-55.47 154.29-6 6.45-8.66 14.16-8.61 21.71.11 16.4 12.98 32 32.1 32h383.8c19.12 0 32-15.6 32.1-32 .05-7.55-2.61-15.27-8.61-21.71z"
                    class="fa-primary"
                    ></path>
                    </g>
                    </svg>Notifications
                                </a>
                            </li>
                        </ul>
                    </aside>
                    <main>
                        <h1>Welcome to the Table!</h1>
        <p>Here you can leave some information, change, delete or add entirely new users.</p>
        <%List<DataClass> dataList = (List<DataClass>) request.getAttribute("data");%>
                    <table class="">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>name</th>
                                <th>age</th>
                                <th>update</th>
                                <th>delete</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <%for(DataClass data:dataList) { %>
                        <tr>
                            <td><%=data.getId()%></td>
                            <td><%=data.getName()%></td>
                            <td><%=data.getAge()%></td>
                            <td>
                                <form action="form_update.jsp" method="post">
                                    <input type="hidden" name="id" value="<%=data.getId()%>">
                                    <input type="hidden" name="name" value="<%=data.getName()%>">
                                    <input type="hidden" name="age" value="<%=data.getAge()%>">
                                    <input type="submit" value="Update">
                                </form>
                            </td>
                            <td>
                                <form action="<%=request.getContextPath()%>/form" method="get">
                                    <input type="hidden" name="id" value="<%=data.getId()%>">
                                    <input type="submit" value="Delete">
                                </form>
                            </td>
                        </tr>
                       <% } %>
                       <tr>
                           <td colspan="4">
                          <form action= "<%=request.getContextPath()%>/DataClass" method="get">
                              <input class="table_btn" type="text" name="search">
                              <input class="table_btn" type="submit" value="Search">
                          </form>
                      </td>
                            <td colspan="3">
                                <form action="form-file.jsp" method="get">
                                    <input type="submit" value="to form-file" >
                                </form>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    </main>

                    <footer>
                        <p>Made by Shylo Ivan for Wolfpack in 2020 - Icons from fontawesome.com</p>
                    </footer>
</body>
</html>
