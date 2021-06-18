<?php
    include $_SERVER['DOCUMENT_ROOT'].'/CCNA_answer/php/auth.php';
    $con=connection();

    if(isset($_GET['find'])){
        $search=$_GET['search'];
        $data=store_and_retrieve('SELECT',null,null,$search);
        $details=$data->fetch_assoc();
    }

    

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/table.css">
    <title>Document</title>
</head>
<body>
    <header>
        <h1><a href="./index.php">ADD QUESTION</a></h1>
        <form method='get'>
            <input type="search" name='search' placeholder="type your question?" />
            <input type="submit" value="FIND" name='find'>
        </form>
    </header>
    <body>
        <table>
            <tr>
                <th>question</th>
                <th>answer</th>
            </tr>
            <?php if(isset($details)){ do{ ?>
                <tr>
                    <td><?php echo $details['questions']?></td>
                    <td><?php echo $details['answer']?></td>
                </tr>
            <?php }while($details=$data->fetch_assoc()); } ?>
        </table>
    </body>
</body>
</html>