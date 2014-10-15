class ContactMailer < ActionMailer::Base
  default :from => "techrails@gmail.com"

  def get_quote(contact)
    @contact = contact
    mail(:to => "railsforce@hotmail.com", :subject => "RailsForce: New quote request")
  end

  def send_confirmation(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "RailsForce: Quote request received")
  end
end