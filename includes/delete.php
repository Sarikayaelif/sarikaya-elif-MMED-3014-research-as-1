<?php 

class DataServiceDelete {

    function goDelete() {
        $db = new Database();
        $connection = $db->getConnection();
        $gone = $_GET["gone"];

        $question3 =$connection->prepare("DELETE FROM `questions` WHERE `questions`.`question_id` = 2;
        DELETE FROM `questions` WHERE `questions`.`question_id` = 3;");
        $question3->execute(array($gone));
        $result3 = question3->fetchAll(PDO::FETCH_ASSOC);
        foreach($result3 as $item) {
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

