<%@ page import="org.obrii.mit.dp2021.interfaces.IContainer" %>
<%@ page import="org.obrii.mit.dp2021.interfaces.IItems " %>
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
<% IContainer items = (IContainer) request.getAttribute("items");%>
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
                            <h3 class="Title">ENTER TO SITE</h3>
                        </div>
                    </div>
                    <div class="dialoge__menu">
                        <form action="<%=request.getContextPath()%>/form" method="POST">

                            <div class="form-row">
                                <input name="name" type="text" id="name" required autocomplete="off"><label for="name">Name</label>
                            </div>
                            <div class="form-row">
                                <input name="email" type="text" id="email" required autocomplete="off"><label for="email">Email</label>
                            </div>
                            <h3 class="text">On this moment we can offer a, <%=items.getItems().size()%> options of choise.</h3>
                            <select class="buttons" name="item">
                                <% for (IItems item : items.getItems()) {%>
                                    <option value="<%= item.getItem()%>">
                                        <%=item.getItem()%>
                                    </option>
                                <%}%>
                            </select>
                            <button class="submit" type="submit">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</body>
<script src="js.js"></script>

</html>