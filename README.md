# Running Log

I will aimm to create a running log with an authenticated log in using Devise and be able to search the logs using Ransack

# Day 1 
I have a basic layout up and running, "views" I currently have a homepage, a form to enter logs, a page to display the logs and a shared navbar for ease of navigation.
Once you have entered a log into the form it will automatically take you to the display page, where upon you can search using Ransack. Currently it is only set up to 
search for surface type, but I will add to these.

One of the biggest issues I had before this was setting up a model exactly how I'd like it, think I got one to work on the 5th try. It's still not exactly correct as 
I'd like to be able to have the time as it's own thing and the pace and distance as decimals. I tried a few different "types" for the params but couldn't quite find the 
right fit. More research is needed. 

As for the controllers, by far the most difficult one was the form submission (log). With a little help from some tutorials I managed to get the form add the entered 
details in the model (table) on submit and the redirect to the display page of the logs, which is in an average looking table courtesy of bootstrap.

Lastly for day 1 I managed to get the search functionality working, using Ransack. Again I followed a few tutorials and read the docs, I think once I have done this once
it should be fairly easy to tweak it to add other search parameters, I'm currently thinking of ways to search by different terms withou having 4-5 search bars rendered
on the page.

Currently I'm on about 3.5 hours, maybe I'm not quite as far along as I thought, having said that I have learnt a lot and enjoyed the proccess. Thinking about tomorrow
trying to add a log/sign in function and authentication could be difficult. I guess I will need a completely new table for each user with their own personal logs!
 
 
