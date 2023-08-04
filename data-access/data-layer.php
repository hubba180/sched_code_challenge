<?php
  function getQuery($sql) {
    include "./constants/mysql-vals.php";
    $conn = new mysqli($servername, $username, $password, $schema);
    if ($conn->connect_error) {
      return false;
    }
    $query = $sql;
    $result = mysqli_query($conn, $query);
    $resultCheck = mysqli_num_rows($result);
    $data = [];
    if ($resultCheck > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        array_push($data, $row);
      }
    }
    $conn->close();
    return $data;
  }
?>