# To run the application:
- after cloning or downloading the application file , open the system terminal .
- in terminal type "bundle install" to add all the required gems present in the gem file.
- now, type "db:migrate" to migrate all the tables to database.
- once it is done type " Rails s " in the command line to run in the local host 
- so now on the ui side register yourself and then login .
- post login in the home click on post listings to see all the posts
- only the logged in user has the ability to create  ,edit and delete his own posts ,he dont have access to edit or delete other User posts.
 

# Ruby version
 
     ruby "3.0.0"
 
# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
     gem "rails", "~> 7.0.3", ">= 7.0.3.1"
