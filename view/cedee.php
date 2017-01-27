<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>Spis płyt</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="../controler/js/index_hover.js"></script>
    <script src="../controler/js/imsky-holder-8220898/holder.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
    $('.collapse').collapse()
    </script>
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

<div class="row">
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
</div>
<div class="row">
<?php
 $con = mysqli_connect('localhost', 'bendomin_paluch7', 'haslo');
 ?>


           <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoA">A</button>
             <div id="demoA" class="collapse">
             <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                         <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "A%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
              </tbody>
             </table>
             </div>



           <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoB">B</button>
             <div id="demoB" class="collapse">
              <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "B%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
              </tbody>
             </table>
            </div>


           <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoC">C</button><div id="demoC" class="collapse">
             <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "C%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                           </tbody>
                          </table>
             </div>



           <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoD">D</button>
           <div id="demoD" class="collapse">
              <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "D%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                            </tbody>
                           </table>
             </div>



           <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoE">E</button>
           <div id="demoE" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "E%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
         <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoF">F</button>
             <div id="demoF" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "F%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
         <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoG">G</button>
             <div id="demoG" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "G%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoH">H</button>
             <div id="demoH" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "H%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
         <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoI">I</button>
             <div id="demoI" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "I%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoJ">J</button>
             <div id="demoJ" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "J%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
      <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoK">K</button>
             <div id="demoK" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "K%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoL">L</button>
             <div id="demoL" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "L%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
     <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoM">M</button>
             <div id="demoM" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "M%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
     <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoN">N</button>
             <div id="demoN" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "N%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoO">O</button>
             <div id="demoO" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "O%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
      <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoP">P</button>
             <div id="demoP" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "P%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
     <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoR">R</button>
             <div id="demoR" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "R%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoS">S</button>
             <div id="demoS" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "S%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>
             <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoT">T</button>
             <div id="demoT" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "T%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>

        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoU">U</button>
             <div id="demoU" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "U%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                            </table>
             </div>

        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoW">W</button>
             <div id="demoW" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "W%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
             </div>

        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demoZ">Z</button>
             <div id="demoZ" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>
                          <?php
                              $query_columns_info = 'SELECT DISTINCT * FROM bendomin_paluch7.plyta WHERE UPPER(nazwa) LIKE "Z%"';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['plyta_wytwornia_FK'].'</td>'.
                                        '<td>'.$row['zespol_idzespol'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                             </tbody>
                            </table>
        </div>




<button type="button" class="btn btn-warning" data-toggle="collapse" data-target="#demoLADNY_GUZIK">POKAŻ WSZYSTKIE POSORTOWANE PO NAZWIE</button>
             <div id="demoLADNY_GUZIK" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>Nazwa</th>
                              <th>Data wydania</th>
                               <th>Wytwórnia</th>
                               <th>Zespół</th>
                              </tr>
                             </thead>
                             <tbody>

   
                                  <?php
                              $query_columns_info = 'SELECT DISTINCT a.nazwa AS nazwa_plyty, a.data_wydania, b.nazwa AS nazwa_wytworni, c.nazwa AS nazwa_zespolu FROM bendomin_paluch7.plyta AS a LEFT JOIN bendomin_paluch7.wytwornia AS b ON a.plyta_wytwornia_FK = b.idwytwornia RIGHT JOIN bendomin_paluch7.zespol AS c ON a.zespol_idzespol = c.idzespol ORDER BY nazwa_plyty DESC';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['nazwa_plyty'].'</td>'.
                                        '<td>'.$row['data_wydania'].'</td>'.
                                        '<td>'.$row['nazwa_wytworni'].'</td>'.
                                        '<td>'.$row['nazwa_zespolu'].'</td>'.
                                        '</tr>';
                                   }
                               }
                           ?>
                   </tbody>
                 </table>
    </div>
            <button type="button" class="btn btn-success" data-toggle="collapse" data-target="#demoAGGREGATION">AGGREGATION FUNCTION(min i max z daty wydania plyty)</button>
             <div id="demoAGGREGATION" class="collapse">
               <table class="table">
                             <thead>
                             <tr>
                              <th>MIN</th>
                               <th>MAX</th>
                              </tr>
                             </thead>
                             <tbody>

   
                                  <?php
                              $query_columns_info = 'SELECT MIN(data_wydania) AS min, MAX(data_wydania) AS max FROM bendomin_paluch7.plyta';
                              if($result = mysqli_query($con, $query_columns_info)){
                                  while ($row = mysqli_fetch_assoc($result)) {
                                  //drukujemy nazwy kolumn
                                   echo '<tr>'.
                                        '<td>'.$row['min'].'</td>'.
                                        '<td>'.$row['max'].'</td>'.
                                       '</tr>';
                                   }
                               }
                           ?>     
                   </tbody>
                 </table>
                 
    </div>                      


    <div id="futer" class="row" style="font-size:30px; margin-left:15px; margin-top: 30px; cursor: pointer; bottom: 20px; position: relative;">
        <a  href="index.php">COFNIJ</a></div>
</div>
</body>
</html>