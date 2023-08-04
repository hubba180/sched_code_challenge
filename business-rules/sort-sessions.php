<?php 

  function getSpeakers($query) {
    return getQuery($query);
  }
  
  function getUniqueSessions($query) {
    return getQuery($query);
  }

  function switchFirstAndLast($name) {
    $nameArray = explode(" ", strval($name));
    if (count($nameArray) < 2) {
      return $name;
    }
    $lastname = array_pop($nameArray);
    array_unshift($nameArray, $lastname);
    return implode(" ", $nameArray);
  }

  function reverseNameSwitch($name) {
    $nameArray = explode(" ", strval($name));
    if (count($nameArray) < 2) {
      return $name;
    }
    $firstname = array_shift($nameArray);
    array_push($nameArray, $firstname);
    return implode(" ", $nameArray);
  }

  function sortSpeakers($people) {
    $reversedNames = [];
    foreach($people as $person) {
      //reverse first and last name then push to new array
      array_push($reversedNames, switchFirstAndLast($person));
    }
    //sort based on last name
    sort($reversedNames);
    //switch first and last names back to original places
    for ($x = 0; $x <= count($reversedNames) - 1; $x++) {
      $name = $reversedNames[$x];
      $reversedNames[$x] = reverseNameSwitch($name);
    }
    return $reversedNames;
  }

  function filterSessions() {
    include "./data-access/data-layer.php";
    include "./constants/mysql-vals.php";
    $speakerSessions = getSpeakers($speakersQuery);
    $uniqueSessions = getUniqueSessions($sessionsQuery);
    $filteredSessions = [];
    foreach($uniqueSessions as $session) {
      // iterate over speaker sessions and grab speaker data
      $speakers = [];
      foreach($speakerSessions as $speaker) {
        // identify speaker is a match with the current session
        if ($session["id"] == $speaker["sessionid"]) {
          // add to speakers array
          array_push($speakers, $speaker["name"]);
        }
      }
      //alphabetize speakers on last name
      $sortedSpeakers = sortSpeakers($speakers);
      $compiledData = [
        "speakers" => $sortedSpeakers, 
        "start" => $session["session_start"],
        "end" => $session["session_end"],
        "sessionName" => $session["name"],
        "description" => $session["description"]
      ];
      // add compiled data to filteredSessions
      $filteredSessions = array_merge($filteredSessions, [$session["id"] => $compiledData]);
    }
    return $filteredSessions;
  }
?>