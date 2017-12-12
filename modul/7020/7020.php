<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>  
    <a href="fonts/FontAwesome.otf"></a>
    <?php
    if (!class_exists('lessc')) {
        include ('./libs/lessc.inc.php');
    }
    $less = new lessc;
    $less->compileFile('less/7020.less', 'css/7020.css');
    ?>
    <link href="css/7020.css" rel="stylesheet" type="text/css"/>
    <script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>


</head>
<body>
    <div class="type-7020">
        <!-- BEGIN HEADER -->
        <div class="header">
            <div class="limit-wrapper">
                <div class="extended-column-inner">
                   <div class="row ">
                       <div class="title">
                           <p><image src="images/De-logo.svg"></p>
                            <h2>Minimalism is a way of living at the maximum of your potential.</h2>
                            <a class="" href="#intro"><img src="images/arrow-long-down.svg"> </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END HEADER -->
    </div>
</body>
</html>




