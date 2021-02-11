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
                        <form action="final.jsp" class="ui-form">
                            <h3>ENTER TO SITE</h3>
                            <div class="form-row">
                                <input type="text" id="email" required autocomplete="off"><label for="email">Email</label>
                            </div>
                            <div class="form-row">
                                <input type="password" id="password" required autocomplete="off"><label for="password">Пароль</label>
                            </div>
                            <h3 class="text">Choose what do you like</h3>
                            <div class="checkbox">
                                <div class="checkbox__colum">
                                    <input type="checkbox" id="с1"><label for="c1"> Pancakes</label><br>
                                    <input type="checkbox" id="с2"><label for="c2"> Cake</label>
                                </div>
                                <div class="checkbox__colum">
                                    <input type="checkbox" id="с3"><label for="c3"> Tears of virgin</label><br>
                                    <input type="checkbox" id="с4"><label for="c4"> Chocolate</label>
                                </div>
                            </div>
                            <button class="submit" type="submit">Войти</button>
                        </form>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</body>
<script src="js.js"></script>

</html>