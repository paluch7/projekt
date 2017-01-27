<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>Spis zespołów</title>
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
<button type="button" class="btn btn-warning" data-toggle="collapse" data-target="#demoLADNY_GUZIK">WYŚWIETL INFO O KOLABORACJACH</button>
             <div id="demoLADNY_GUZIK" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Imię</th>
                              <th>Nazwisko</th>
                               <th>Nazwa zespołu</th>
                               <th>Nazwa kolaboracji</th>
                              </tr>
                             </thead>
                             <tbody>


                                  <?php
                                   $con = mysqli_connect('localhost', 'bendomin_paluch7', 'haslo');
                              $query_columns_info = 'SELECT a.imie, a.nazwisko, b.nazwa AS nazwa_zespolu, c.nazwa AS nazwa_kolaboracji FROM bendomin_paluch7.artysta a LEFT JOIN bendomin_paluch7.zespol b ON a.artysta_zespol_FK = b.idzespol RIGHT JOIN bendomin_paluch7.kolaboracja c ON a.artysta_kolaboracja_FK = c.idkolaboracja';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['imie'].'</td>'.
                                        '<td>'.$row['nazwisko'].'</td>'.
                                        '<td>'.$row['nazwa_zespolu'].'</td>'.
                                        '<td>'.$row['nazwa_kolaboracji'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>

                   </tbody>
                 </table>
    </div>
        
        
        
    <button type="button" class="btn btn-danger" data-toggle="collapse" data-target="#demoFUNKCJA">WYŚWIETL FUNKCJE</button>
             <div id="demoFUNKCJA" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Zawartość funkcji</th>

                              </tr>
                             </thead>
                             <tbody>


                                  <?php
                                   $con = mysqli_connect('localhost', 'bendomin_paluch7', 'haslo');
                              $query_columns_info = 'SELECT HelloWorld(); AS HelloWorld FROM bendomin_paluch7';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['HelloWorld'].'</td>'.
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