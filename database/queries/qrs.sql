CeDeez:
by $name
SELECT * FROM `plyta` WHERE UPPER(nazwa) = '$name';
by $letter
SELECT * FROM `plyta` WHERE UPPER(nazwa) LIKE '$letter%';


BAND:
all bands
SELECT nazwa FROM `zespol`;


Artist:
//UPDATE
$change_column = $_POST['change_column'] {imie, nazwisko, pochodzenie, wiek, plec, opis}
$imput_value = $_POST['change_column_val'];
$idartist = $_POST['idartist'];
UPDATE artysta
SET $change_column=$imput_value
WHERE idartysta=$idartist;

//ALL ARTISTS INFOS
SELECT * FROM `artysta`;


