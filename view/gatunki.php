<html>
<head>
    <meta charset="UTF-8">
    <title>Spis płyt</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="../controler/js/index_hover.js"></script>
    <script src="../controler/js/imsky-holder-8220898/holder.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .row {
            margin:0;
        }
        

        p {
            border: 2px white solid;
            border-radius: 10px;
            background-color: cornsilk;
        }
        .dodaj {
            text-align: left;
            margin-top: 20px;
        }
        
        .usun {
            margin: 0;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            max-width: 40vw;
        }

        
        
    </style>
</head>
<body style="
background: #ee0979; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #ee0979 , #ff6a00); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #ee0979 , #ff6a00); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        " >
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

<div class="row">
    <form class="dodaj" action="gatunki_dodaj.php" method="POST">
    <label>Dodaj gatunek:<input name="nazwa_gatunku" type="text" required></label>
    <button type="submit">dodaj</button>
    </form>
     
    

          <?php

                $con = mysqli_connect('localhost', 'bendomin_paluch7', 'haslo');
                                        $query_columns_info = 'SELECT DISTINCT idgatunek, nazwa FROM bendomin_paluch7.gatuneki_enum';
                                        if($result = mysqli_query($con, $query_columns_info)){
                                            while ($row = mysqli_fetch_assoc($result)) {
                                                //drukujemy nazwy kolumn
                                                echo '<p style="font-size: 30px; margin-top:50px;">'.$row['nazwa'].'</p>'
                                                .'<form class="usun" action="usun_gatunki.php" method="POST">';
                                                echo '<input readonly name="idgatunek" value="'.$row['idgatunek'].'">';
                                                echo '<button type="submit">X</button>'
                                                .'</form>';
                                            }
                                        }
           ?>


    <button type="button" class="btn btn-warning" data-toggle="collapse" data-target="#demoTRIGGER">TEST TRIGGERA</button>
             <div id="demoTRIGGER" class="collapse">
                 <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa gatunku(z tablicy trigger_test)</th>
                              </tr>
                             </thead>
                             <tbody>
    <?php
                $con = mysqli_connect('localhost', 'bendomin_paluch7', 'haslo');
                                        $query_columns_info = 'SELECT DISTINCT nazwa_gatunku FROM bendomin_paluch7.trigger_test';
                                        if($result = mysqli_query($con, $query_columns_info)){
                                            while ($row = mysqli_fetch_assoc($result)) {
                                                //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa_gatunku'].'</td>'.
                                        '</tr>';                                            }
                                        }
           ?>
                     </tbody>
                 </table>
    </div>


</div>
    
 <div id="futer" class="row" style="font-size:50px; margin-left:15px; margin-top: 50px; cursor: pointer;">
        <a  href="index.php">COFNIJ</a>
</div>
</div>

</body>
</html>