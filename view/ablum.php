<head>
    <meta charset="UTF-8">
    <title>Jakiś Album</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="../controler/js/index_hover.js"></script>
    <script src="../controler/js/imsky-holder-8220898/holder.js"></script>
</head>
<body style="
background: #ee0979; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #ee0979 , #ff6a00); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #ee0979 , #ff6a00); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        " >
<style>
    .row {
        margin:0;
    }
</style>

<div class="row" >
    <div id="header"
         style="
         width: 100vw;
         height: 15vh;
         padding: 0;
         margin: 0;
         background-size: auto;
         background-image: url('images/maxresdefault.jpg');
         background-repeat: no-repeat; border-radius: 10px;
         -webkit-box-shadow: 0px 7px 20px 2px rgba(0,0,0,0.75);
        -moz-box-shadow: 0px 7px 20px 2px rgba(0,0,0,0.75);
        box-shadow: 0px 7px 20px 2px rgba(0,0,0,0.75);">
    </div>

    <div id="content" class="row">
        <div class="col-lg-4" style="width: 50vw; text-align: center;">
            <img src="holder.js/500x500" style="margin: 100px;">
        </div>
        <div class="col-lg-12" style="width: 50vw;  text-align: center; margin-top: 100px;">
            <h1>nazwa plyty(rok)</h1>
            <h2>nazwa zespołu</h2>
            <h2 style="line-height: 70px;">gatunek</h2>
            <h3 style="line-height: 150px;">wytwórnia</h3>
        </div>
    </div>

    <div id="futer" class="row" style="font-size:50px; margin-left:15px; cursor: pointer;">
        <a  href="index.php">COFNIJ</a>
    </div>
</div>

</body>
</html>