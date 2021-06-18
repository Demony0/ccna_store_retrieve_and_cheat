<?php
    include $_SERVER['DOCUMENT_ROOT'].'/CCNA_answer/php/auth.php';
    $con=connection();

    if(isset($_POST['save'])){
        $question=$_POST['question'];
        $answer=$_POST['answer'];
        store_and_retrieve('INSERT',$question,$answer,null);
    }

    $items=store_and_retrieve('SELECT',null,null,'sum');
    $count=$items->fetch_assoc();

?>

<!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="../css/form.css">
            <title>CCNA CHEAT</title>
        </head>
        <body>
            <h1 class="err"><a href="./search_answer.php">Go to answer sheet</a><br/>
                <div><?php echo 'Total items: '. $count['count'] ?></div></h1>
            <form action="./index.php" method="post">
                <label for="question">QUESTION: </label>
                <input type="text" name="question" id="question" required />
                <label for="answer">ANSWER:</label>
                <input type="text" name="answer" id="answer" required />
                <input type="submit" value="save" name='save' id='save'>
            </form>
        </body>
    </html>