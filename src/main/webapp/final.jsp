<%@ page import="org.obrii.mit.dp2021.Tools.Parameter" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Crimson+Pro:wght@700&display=swap" rel="stylesheet">
    <title>Helltaker</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/ico" href="images/favicon.ico">
</head>

<body>
<% Parameter parameter = (Parameter) request.getAttribute("parameter");%>
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
                            <p>So you finaly did this! Dear, <%=parameter.getName()%></p>
                            <p>We will contact with you by this addres, <%=parameter.getEmail()%></p>
                            <p>And also we will send you <%=parameter.getItem()%></p>
                        </div>
                    </div>
                    <div class="dialoge__menu">
                        <div class="dialoge__char">
                            <p>If you have finihed reading, click on button below</p>
                        </div>
                    </div>
                    <form action="index.jsp" method="get">
                        <button type="submit">Click on button</button>
                    </form>
                </div>
            </div>
        </footer>
    </div>
</body>
<script src="js.js"></script>

</html>