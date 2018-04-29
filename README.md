# Sched Coding Challenge:

### Goal

You will be creating an event page (schedule) that has a list of sessions (schedule items). Each of the sessions has speakers who will be presenting. Your job is to combine the speaker and session data, sort the sessions alphabetically based on the speaker's last name, and output the list in any way that you desire (console, HTML, etc). Include at least the session name, the speaker(s) name, and session start/end time.
The goal is to simulate accessing data from a database, serializing the information, manipulating the data, and outputting the data in any format.

### Data

The input data is provided in 3 SQL dump files: `session.sql`, `role.sql` and `user.sql`. The session data, including session unique IDs is contained in the `session.sql` file. The user profiles, including user unique IDs is in the `user.sql` file. Finally, the `role.sql` file contains session-to-user mappings. MySQL is the preferred RDBMS for this project. The data is pretty simple, but take a look to familiarize yourself with it.

### Gotchas

Sessions can be active (published), or inactive (unpublished). Filter the non-active sessions out from the final data set. Note also, that speakers are not the only role a user can have. Finally, speakers may not all have last names. Maybe there are others?

### Example output data

```
Session Foo - Mar 1st 2018 10:50am-12:30pm
  - Adam Adams
  - John Doe

Session Bar - Mar 1st 2018 12:30pm-1:30pm
  - Buggy Bugowsky

Session Baz - Feb 28th 2018 12:30pm-1:30pm
  - Sandra Clinton
```

### Requirements

All tools that you would use in your day to day job are fair game. Google is your friend. Take three simulated Database dumps (Sessions, Speakers, Join table) which are stored in the repo as SQL files. Combine the data and sort these sessions by the speaker's last name. Your output does not need to follow the example given above, verbatim. It's just an example. 

While you should be able to complete this challenge in roughly 2-3 hours, do not feel compelled to timebox yourself. Feel free to add your own flair and make the code your own. If needed, make your best assumptions and explain how/why.
