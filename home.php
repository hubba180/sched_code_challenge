<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <title>Sessions List in PHP</title>
  </head>
  <body class="align-items-center">
    <h1 class="display-2 text-center">Sessions List</h1>
    <div class="container">
      <?php
        include "./business-rules/sort-sessions.php";
        $sessions = filterSessions();
        foreach($sessions as $session) {
          $name = $session["sessionName"];
          $start = date("M. j, g:ia", strtotime($session["start"]));
          $end = date("M. j, g:ia", strtotime($session["end"]));
          echo "<hr><br><h4>Name: $name</h4><h6>Start: $start <br>End: $end</h6>";
          if ($session["speakers"] && count($session["speakers"]) > 0) {
            echo "<b>Speakers: </b><br>";
            foreach($session["speakers"] as $speaker) {
              echo "$speaker<br>";
            }
          }
          if ($session["description"]) {
            $description = $session["description"];
            echo "<b>Description: </b> $description";
          }
          echo "<br><br>";
        }
      ?>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  </body>
</html>