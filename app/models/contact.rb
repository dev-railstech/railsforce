class Contact < ActiveRecord::Base

  after_create :send_get_quote_email

  def send_get_quote_email
    ContactMailer.get_quote(self).deliver
  end
end
