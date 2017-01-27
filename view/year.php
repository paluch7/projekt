<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>Spis płyt</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="../controler/js/index_hover.js"></script>
    <script src="../controler/js/imsky-holder-8220898/holder.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        <form id="foo" action="year_between.php" method="POST">
            <label>Wpisz miedzy jakimi datami szukac płyt
                <input required type="number" name="pierwsza">-<input required type="number" name="druga">
                </label>

                <button type="submit">SPRAWDŹ TO</button>
        </form>
        
        
        
        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoSUBQUERY">SUBQUERIES(wypisuje wszystkie płyty młodsze od Toxicity(2001+ rok) z tabeli plyta posortowane po dacie rosnąco)</button>
             <div id="demoSUBQUERY" class="collapse">
         <table class="table">
 <thead>
                             <tr>
                              <th>Nazwa plyty</th>
                               <th>Data wydania</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                          $con = mysqli_connect('localhost', 'bendomin_paluch7', 'haslo') or die('cos poszlo nie tak');
                              $query_columns_info = 'SELECT nazwa, data_wydania FROM bendomin_paluch7.plyta WHERE data_wydania >(SELECT data_wydania FROM bendomin_paluch7.plyta WHERE nazwa="Toxicity") ORDER BY data_wydania ASC;';
                              if($result = mysqli_query($con, $query_columns_info)){
                              while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '</tr>';
                                   }
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