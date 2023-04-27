class UserMailer < ApplicationMailer
    default from: 'josephbill00@gmail.com'
  
    def welcome_email(user)
      @user = user
      mail(to: @user.email, subject: @user.name) do |format|
        format.text { render plain: 'Hello and welcome to My Awesome Site!' }
      end
    end
  end
  