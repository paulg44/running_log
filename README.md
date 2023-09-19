# Running Log Overview

I will aim to create a running log with an authenticated log in using Devise and be able to search the logs using Ransack. You do not have to sign up, you can sign in with the test ID and try the functionality with the provided data. Details below.

# Current Functionality

- Enter run/walk details into log(Test model)
- View all logs on display page
- Edit logs using the edit button in table
- Delete logs by entering corresponding ID tag
- Search through logs by surface(string) using Ransack
- Sign UP/IN/OUT using Devise full auth working
- View, create, edit logs specific to user (can only see your personal logs once logged in)
- Easy navigation through views(pages) with navbar

# Tech Stack (& Gems)

- Ruby on Rails 7
- Ransack Gem
- Devise Gem
- Bootstrap

# Model Names

- User
- Test

# Run locally

- git clone https://github.com/paulg44/running_log.git
- install Ruby on Rails (if not already)
- in start command prompt ruby start server **rails server**
- go to given web address (usually localhost:3000)

## Test Data

- email - test@test.com
- password - testing

## Next Steps

- move the delete button to each log instead of having an input, so I can remove the ID from table ##DONE##
- add more functionality to the search options and a sorting option, by distance etc
- add a user log in so they can retrieve their personal logs ##DONE##
- enter distance and time and have the pace calculated automatically

## Day 1 - 3.5 hours

I have a basic layout up and running, "views" I currently have a homepage, a form to enter logs, a page to display the logs and a shared navbar for ease of navigation.
Once you have entered a log into the form it will automatically take you to the display page, where upon you can search using Ransack. Currently it is only set up to
search for surface type, but I will add to these.

One of the biggest issues I had before this was setting up a model exactly how I'd like it, think I got one to work on the 5th try. It's still not exactly correct as
I'd like to be able to have the time as it's own thing and the pace and distance as decimals. I tried a few different "types" for the params but couldn't quite find the
right fit. More research is needed.

As for the controllers, by far the most difficult one was the form submission (log). With a little help from some tutorials I managed to get the form add the entered
details in the model (table) on submit and the redirect to the display page of the logs, which is in an average looking table courtesy of bootstrap.

Lastly for day 1 I managed to get the search functionality working, using Ransack. Again I followed a few tutorials and read the docs, I think once I have done this once
it should be fairly easy to tweak it to add other search parameters, I'm currently thinking of ways to search by different terms without having 4-5 search bars rendered
on the page.

Currently I'm on about 3.5 hours, maybe I'm not quite as far along as I thought, having said that I have learnt a lot and enjoyed the process. Thinking about tomorrow adding an update and delete function to the model.
trying to add a log/sign in function and authentication could be difficult. I guess I will need a completely new table for each user with their own personal logs!

## Day 2 - 3 hours

This evening I have a fully functional, if not pretty, CRUD part of the application. I have added an edit button to the logs display, which then takes you to a form with the details pre-populated that can then be edited as you please.

I have added a delete functionality, at the moment it is an input that takes a parameter of the log ID and deletes the corresponding ID in the Tests database. I would like to have this next to the edit button so that it deletes the corresponding log the same as edit. However I tried a few different ways to do this and could not quite manage it....yet.

I hugely overestimated what I'd get done in two evenings (around 6.5). I decided to concentrate on getting a fully functional log working and I am going to carry on working on it over the weekend as I've enjoyed what I've done so far and Ruby in general. I would like to complete it and, genuinely, it's something I will use in the future, better than excel spreadsheets!
I also need to look more into the "types" of inputs in the models, the duration distance and pace all need work. I tried a few different things like decimals but they didn't work how I intended, more research is needed.
I like the Model, View, Controller & Routes aspect of Ruby. It seems quite difficult to understand and a lot of folders/files at first but the more you do the more it makes sense and can be easier to find bugs when things are separate.

## Session 3

I created a log in page using my own form and model, only to find out that using Devise you don't need to code all that it is pre-written for you, which is a brilliant addition to the app. I can still style it to my choice.
I had to add something called turbo_method on the sign out page as that wouldn't work. Overall Devise is a great "Gem" and something I will look a lot more into.

## Continued

Over the last couple of days I have managed to get the sign up/in etc completely working with Devise and have also managed to have user specific data retrieved and entered dependant on who is signed in, basically you can now only see your specific data. There seems to be a lot of background functions running, with authorization etc that I need to learn about more.
I have started styling some parts but the next part is to make the search and sort form fully functional with plenty of options and sort out the "types" for the running log modal as they are still not quite correct.

## CCS Issues

I'm having issues with CSS, mainly since I added a background to the body (which took forever in itself). I can now only add styles inline and not in the files I already had. I also get some errors(Nil to String) that I believe are to do with the sprockets but I'm ending up down rabbit holes I can't see the end of. However the App still seems to work fine, I think I need an experienced person to take a look at it.
So currently the CSS is a mix of a little bit of CSS files, some inline custom styling and some bootstrap, not ideal but it looks and works ok.
This is something I'll have to look into a lot more.
