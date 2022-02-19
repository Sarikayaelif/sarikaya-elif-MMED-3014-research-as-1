<?php 

class DataServiceInsert {

    function goInsert() {
        $db = new Database();
        $connection = $db->getConnection();
        $added = $_GET["added"];

        $inserted =$connection->prepare("INSERT INTO `difficulty` (`difficulty_id`, `difficulty_level`) VALUES (NULL, 'easy')");
        $inserted->execute(array($added));
        $result4 = inserted->fetchAll(PDO::FETCH_ASSOC);
        foreach($result4 as $item) {
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

