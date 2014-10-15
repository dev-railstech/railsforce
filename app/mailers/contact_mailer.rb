class ContactMailer < ActionMailer::Base
  default :from => "techrails@gmail.com"

  def get_quote(contact)
    @contact = contact
    mail(:to => "railsforce@hotmail.com", :subject => "RailsForce: New quote request")
  end
end