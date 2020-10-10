# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
Used Sinatra with my Contollers
- [X] Use ActiveRecord for storing information in a database
Used ActiveRecord to build my client and artist tables 
- [X] Include more than one model class (e.g. User, Post, Category)
I have two models Client and Artist
- [X] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
Artist model has_many Clients 
- [X] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
Client model belongs_to Artist model
- [X] Include user accounts with unique login attribute (username or email)
Have to sign in with e-mail and password
- [X] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
You can create a new client,it has a show page, can be updated and deleted 
- [X] Ensure that users can't modify content created by other users
Once signed in Artist can only access there own clients
- [X] Include user input validations
Checks for eamil and password and makes sure all fields are present
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [X] You have a large number of small Git commits
- [X] Your commit messages are meaningful
- [X] You made the changes in a commit that relate to the commit message
- [X] You don't include changes in a commit that aren't related to the commit message
