<?php
  $username = "root";
  $password = "example-password";
  $schema = "example_schema_name";
  $servername = "localhost";
  $speakersQuery = "SELECT * FROM role INNER JOIN user ON role.userid = user.id WHERE usertype = 'speaker';";
  $sessionsQuery = "SELECT * FROM session WHERE active = 'Y' ORDER BY session_start;";
?>