# Sched Coding Challenge:

### Goal

You will be creating an event page (schedule) that has a list of sessions (schedule items). Each of the sessions has speakers who will be presenting. Your job is to combine the speaker and session data, sort the sessions alphabetically based on the speaker's last name, and output the list in any way that you desire (console, HTML, etc). Include at least the session name, the speaker(s) name, and session start/end time.
The goal is to simulate accessing data from a database, serializing the information, manipulating the data, and outputting the data in any format.

### Data

The input data is provided in 3 CSV files: `session.csv`, `role.csv` and `user.csv`. The session data, including session unique IDs is encoded in the `session.csv` file. The user profiles, including user unique IDs is in the `user.csv` file. Finally, the `role.csv` file encodes session-to-user mappings.

### Gotchas

Sessions can be active (published), or inactive (unpublished). Filter the non-active sessions out from the final data set. Note also, that speakers are not the only role a user can have.

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

All tools that you would use in your day to day job are fair game. Google is your friend. Take three simulated Database dumps (Sessions, Speakers, Join table) which are stored in the repo as CSV files. Combine the data and sort these session by the speaker name. Either first or last name is fine. Speakers may not all have last names.

If needed, make your best assumption and explain how/why.
