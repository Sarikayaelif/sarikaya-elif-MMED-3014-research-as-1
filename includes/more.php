<?php
 
 class DataServiceMore {

    function goMore() {
        $db = new Database();
        $connection = $db->getConnection();
        $do = $_GET["do"];
        $topic = $connection->prepare("SELECT * FROM topics INNER JOIN grades ON grades.id = topics.grades_id WHERE topic_id=?");
        $topic->execute(array($do));
        $result1 = $topic->fetchAll(PDO::FETCH_ASSOC);
        // click the more link
        //if(!@$_COOKIE["click".$do]) {
            $click = $connection->prepare("UPDATE topics SET read_number = read_number +1 WHERE topic_id=?");

            $click->execute(array($do));
            $result2 = $click->fetchAll(PDO::FETCH_ASSOC);
        // setcookie("click".$do,"_",time ()+2);
        //}
        foreach($result2 as $item) {
            ?>
            <div>
                <h2><?php echo $item["topic_name"];?></h2>
                <div>The description <?php echo $item["read_number"];?> times have read.</div>
                <div><img src="<?php echo $item["topic_image"]?>" alt="" width="300px"></div>
                <?php echo $item["topic_description"];?></p>
                  
            </div>
            <?php
        }
    
    }
 }


