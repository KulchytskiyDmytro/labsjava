<%@ page import="java.util.List" %>
<%@ page import="org.obrii.mit.dp2021.Data.Data" %>
<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Crimson+Pro:wght@700&display=swap" rel="stylesheet">
    <title>Helltaker</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/ico" href="<%=request.getContextPath()%>/images/favicon.ico">
</head>
<body>
<%List< Data > dataList = (List<Data>) request.getAttribute("data");%>
        <div class="wrapper">
            <div class="body">
                <div class="container">
                    <div class="content">
                        <div class="image">
                            <img class="img_char" src="images/Pandemonica.png" alt="Pandemonica">
                        </div>
                    </div>
                </div>
            </div>
            <footer>
                <div class="foot">
                    <div class="text__bars">
                        <div class="text">
                            <div class="name">
                                <div class="title__text">
                                    <p class="dot">•</p>
                                    <p>Pandemonica, the Tired Demon</p>
                                    <p class="dot">•</p>
                                </div>
                            </div>
                            <div class="dialoge__char">
                                <p>There is nowhere to run darling, You are in Hell.</p>
                                <p>However, you can also check our buisnes partners.</p>
                                <p>Or you can still learn something about this place.</p>
                            </div>
                        </div>
                        <div class="dialoge__menu">
                            <div class="table">

                                <%for (Data data : dataList) {%>
                                <div class="table_header">
                                    <div class="table_header_box">
                                        <p>
                                            <%=data.getId()%>
                                        </p>
                                    </div>
                                    <div class="table_header_box"><%=data.getName()%></div>
                                    <div class="table_header_box"><%=data.getAge()%></div>
                                    <div class="table_header_box"><%=data.getEmail()%></div>

                                    <form action="update.jsp" method="post">
                                        <input type="hidden" name="id" value="<%=data.getId()%>">
                                        <input type="hidden" name="name" value="<%=data.getName()%>">
                                        <input type="hidden" name="age" value="<%=data.getAge()%>">
                                        <input type="hidden" name="email" value="<%=data.getEmail()%>">
                                        <input type="submit" value="Update">
                                    </form>

                                    <form action="<%=request.getContextPath()%>/form" method="get">
                                        <input type="hidden" name="id" value="<%=data.getId()%>">
                                        <input type="submit" value="Delete">
                                    </form>
                                    <%}%>
                                    <form action= "<%=request.getContextPath()%>/" method="get">
                                        <input type="text" name="search">
                                        <input type="submit" value="search data">
                                    </form>
                                    <form action="create.jsp" methd="get">
                                        <input type="submit" value="ADD USER" >
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
</body>


</html>