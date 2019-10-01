class ContactMailer < ActionMailer::Base
  default to: 'logan.rollin@thecpigroup.net'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    Mail(from: email, subject: 'Contact Form Message')
  end 
end