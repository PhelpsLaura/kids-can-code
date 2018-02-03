# README

### Instructions for Setup:

1. Make sure you have Rails installed! You should be able to install everything [here.](http://railsinstaller.org/en)

2. You'll want to have postgresql installed if at all possible. Download it [here](https://www.postgresql.org/download/) then I can help you guys set it up. Hopefully.

3. If you want, set up an account with [Heroku](https://devcenter.heroku.com). This is what we're going to use to get our project on the internet. Technically, we only need this run from one computer and I already have it installed on mine, but it's a good tool to know how to use if you want to set it up.

4. Clone this repository on your machine with:

```
git clone https://github.com/PhelpsLaura/kids-can-code.git
```
(If you need to set up git, there's a Femmehacks presentation somewhere you can look at that should explain it?)

5. Once we have things started, you'll want to run the following commands from the file you've downloaded this to. These just set things up that have already been created:

```
bundle install

rake db:create

rake db:migrate
```
**If you get error messages trying to run the rake commands, it's probably Postgres.** Follow the instructions in postgresTroubleshooting.md if you're getting this problem. [this tutorial](https://www.youtube.com/watch?v=e1MwsT5FJRQ), starting at minute 7:00 (everything before is just downloading, it's ok if you didn't download it the way he does) (This is for Windows, if you're not on Windows there should be a tutorial like this for mac but I don't know where to find it) I'm pretty sure once you've done this you'll be able to make the databases.

**AFTER THAT** navigate to
```
C:\ProgramFiles\PostgreSQL\10\data
```
and open the file titled **pg_hba.conf**. At the *very bottom* of the page, there will be a table at the bottom. Under the Header **Method**, replace everything with the word **trust**.

**PLEASE NOTE:** this is a hacky work-around, not something that you would want to do in a professional setting or if you're building *anything* serious enough for security to be a concern.

Try running the **rake** commands again. If you're getting an error about a user not existing, open PGAdmin4 and create a user with the name it expects. Things *should* work now?

6. To get this running from your local machine, run the command

```
rails s
```

and then open https://localhost:3000 in your browser.

7. It's a bit long, but there's a pretty good introduction to [Ruby on Rails](https://www.youtube.com/watch?v=pPy0GQJLZUM) you can check out if you want -- it's a bit long but it does a good job of explaining everything. You can skip around if it's easier.

8. Good example of a place that does what we're trying to do (except aimed at adults) [here](https://www.freecodecamp.org/)
