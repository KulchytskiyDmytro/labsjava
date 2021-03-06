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
<%List<Data> dataList = (List<Data>) request.getAttribute("data");%>
        <div class="wrapper">
            <div class="body">
                <div class="container">
                    <div class="content">
                        <div class="image">
                            <img class="img_char" src="<%=request.getContextPath()%>/images/Pandemonica.png" alt="Pandemonica">
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

                                <form action="<%=request.getContextPath()%>/" method="post">
                                    <input type="hidden" name="id" value="0">
                                    <input type="hidden" name="title" value="Submited"/>

                                    <input type="text" name="name" placeholder="Your name" required><br/>
                                    <input type="text" name="age" placeholder="Age" required><br/>


                                    <input type="text" name="email" placeholder="Email"><br/>

                                    <button class="button" type="submit">Submit</button>
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