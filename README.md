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

---

### Part 2

Core:

* We want to add users to our app
* Use rails g model to create a User model that will have:
    * An email - string
    * A password - string

* Check if you can create new users in Rails Console

* Now, we can add users, and we can add toys, but theres no relation
* Use a migration to edit our Toy table, so that our 'user' column references our user table (May need to clear database first)
* Add in the relations to both our models
* Verify this has been done correctly, by going into rails c, and typing:
    * User.create
    * User.first.toys.create
    (If this creates a new toy, then you're all good!)

* Set up a seeds file with our new db structure

Advanced:
* We want to generate a model for our manufacturer table. It should contain:
    * Name - string
    * Location - string

* Run a migration that adds a manufacturer column to our Toy table as a reference
  (May need to clear db)
* Add in the relations to our toy model and our manufacturer model
    * A Toy has one manufacturer
    * A Manufacturer can have many toys

* Verify this has been done correctly by typing:
    * Manufacturer.create
    * Manufacturer.first.toys.create
    (If this creates a new toy, then you're all good!)

Expert:
* Add in CRUD functionality for both users and manufacturers
