<?php
    
    function connection(){
        $host='localhost';
        $username='root';
        $password='';
        $database='ccna_answer';
        $con = new mysqli($host,$username,$password,$database);
        if($con->error){
            echo 'error';
        }else{
            return $con;
        }
    }

    function store_and_retrieve($mode,$question,$answer,$search){
        $con=connection();
        if($mode=='INSERT'){
            $sql="$mode INTO answer values('','$question','$answer')";
        }else if($search=='sum'){
            $sql="$mode count(*) as count from answer";
        }else if($mode=='SELECT'){
            $sql="$mode * from answer where questions like ('%$search%')";
        }
        $data = $con->query($sql) or die($con->error);
        return $data;
    }

?>