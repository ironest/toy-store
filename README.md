# MVC Challenge

### Part 1

Core:
* Create a new rails app called 'toy_store', using postgresql
* Create a database
* Create a table called 'toy' that will hold:
    * A name - string
    * A description - text
    * A picture - text
    * A date the item was posted - date
    * A user - string (will just be someone's name that posted the toy)
* Load the table against the DB
* Generate a new migration to remove the 'picture' column
* Remember to migrate our new changes!
* Create the model to go with this table
* Jump into rails console, and have a play around, creating new toys and looking them up

* Setup a seeds file, so that we can create 20 toys
  (may want to use faker to get interesting data)
* Run the seeds file, so we have at least 20 toys

Advanced:
* We now have our toys, but have no way to interact with them
* Add in the necessary views / routes / controllers to make 'toy' a CRUD resource
  (This includes adding a form!!!)
* Check that we are able to add new toys, and that they remain, even after restarting the server!
* Push those changes up to github!
