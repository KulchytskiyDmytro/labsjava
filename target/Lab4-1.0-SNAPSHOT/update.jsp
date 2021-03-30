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

                    </div>
                    <div class="dialoge__menu">
                        <div class="form_wrapper">
                            <form action="<%=request.getContextPath()%>/form" method="post">
                                <input type="hidden" name="id" value="<%=request.getParameter("id")%>">

                                Fill in form <br>
                                <input type="text" name="name" value="<%=request.getParameter("name")%>" required><br/>

                                <input type="text" name="age" value="<%=request.getParameter("age")%>" required><br/>

                                <input type="text" name="email" value="<%=request.getParameter("email")%>"><br/>

                                <button class="button" type="submit">Update</button>
                            </form>
                    </div>
                        <a class="return" href="<%=request.getContextPath()%>">Return</a>
                </div>
            </div>
            </div>
        </footer>
    </div>
</body>
</html>