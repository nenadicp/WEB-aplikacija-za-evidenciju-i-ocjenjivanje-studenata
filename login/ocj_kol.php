<?php

    if(isset($_POST['predmet']) && isset($_POST['studenti']) && isset($_POST['predavanje2']) && isset($_POST['auditorne2'])) {
        include_once 'dbconfig.php';

        $sql = "UPDATE student_predmet SET suma_kolokviji = ROUND(((kolokvij_pred1 + kolokvij_pred2)*".$_POST['predavanje2']."
        + (kolokvij_aud1 + kolokvij_aud2)*".$_POST['auditorne2'].")/4)
        WHERE id_predmet = ".$_POST['predmet']." AND id_student = ".$_POST['studenti']."";

        $result = mysqli_query($connect, $sql);
        if($result) {
            echo "uspješno";

            $query = $connect->query("SELECT * FROM student_predmet AS sp
            INNER JOIN predmet AS p
            ON p.id_predmet = sp.id_predmet
            INNER JOIN student AS s
            ON s.id_student = sp.id_student
            WHERE p.id_predmet = ".$_POST['predmet']." AND s.id_student = ".$_POST['studenti']."");

            $rowCount = $query->num_rows;

            if($rowCount > 0) {
                while($row = $query->fetch_assoc()) {
                    echo '<option value="'.$row['id_student'].'">'.$row['suma_kolokviji'].'</option>';
                }
            } else {
                echo '<option value="">Student nije dostupan</option>';
            }
        } else {
            echo "neuspješno".mysqli_error($connect);
        }
    } else {
        echo "Neuspješno!!!!!!";
    }

?>