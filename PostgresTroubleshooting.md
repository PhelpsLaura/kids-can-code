Check out [this tutorial](https://www.youtube.com/watch?v=e1MwsT5FJRQ), starting at minute 7:00 (everything before is just downloading, it's ok if you didn't download it the way he does) (This is for Windows, if you're not on Windows there should be a tutorial like this for mac but I don't know where to find it) I'm pretty sure once you've done this you'll be able to make the databases.

**AFTER THAT** navigate to
```
C:\ProgramFiles\PostgreSQL\10\data
```
and open the file titled **pg_hba.conf**. At the *very bottom* of the page, there will be a table at the bottom. Under the Header **Method**, replace everything with the word **trust**.

**PLEASE NOTE:** this is a hacky work-around, not something that you would want to do in a professional setting or if you're building *anything* serious enough for security to be a concern.

Try running the **rake** commands again. If you're getting an error about a user not existing, open PGAdmin4 and create a user with the name it expects. Things *should* work now?
