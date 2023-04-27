# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version:
3.1.2.
* System dependencies:
check gemfile 
demo addons 
sendgrid-ruby : for mails 

* Configuration:
bundle install

* Database creation:
rails db:migrate

* Database initialization:
rails db:migrate

### Instructions 
1. Create send grid account  : https://app.sendgrid.com/
2. Get your API key. 
3. Generate your Mailer class : rails g mailer UserMailer  : sample example : use Model + Mailer for naming 
4. Modify mailer class , check UserMailer in mailer folder 
5. Set your SMTP / Send Grid configurations : Check configs -> environments (development and production)
6. Create a Sendgrid.rb file : check initializers folder , also activate CORS settings at this point 
7. Modify actions in Controllers : check create in UsersController for example on how to send the mail 
8. Test on Postman : 

Json request for this demo as per user_params 

{
  "user": {
    "name": "Production Testing",
    "email": "josephbill00@gmail.com"
  }
}



