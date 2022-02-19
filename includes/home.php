<?php
 require_once "connection.php";

        $db = new Database();
        $connection = $db->getConnection();
        $topic = $connection->prepare("SELECT * FROM topics INNER JOIN grades ON grades.id = topics.grades_id");
        
        $topic->execute(array());
        $result1 = $topic->fetchAll(PDO::FETCH_ASSOC);
   
        foreach($result1 as $item) {
            ?>
            <div>
                <h2><?php echo $item["topic_name"];?></h2>
                <div>The description <?php echo $item["read_number"];?> times have read.</div>
               
                <div><img src="<?php echo $item["topic_image"]?>" alt="" width="200px"></div>
                <p> <?php echo substr($item["topic_description"],0,100);?>......</p>
                <div><a href="?choose=more$do=<?php echo $item["topic_id"];?>">more</a></div>
                <div><a href="?choose=delete$gone=<?php echo $item["topic_id"];?>">delete</a></div>
                <div><a href="?choose=insert$added=<?php echo $item["topic_id"];?>">insert</a></div>
                
            </div>
            <?php
        }
   




