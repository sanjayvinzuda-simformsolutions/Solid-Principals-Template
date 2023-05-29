# Single Responsibility principle
# UserInvoice: This class is responsible for generating user invoices. It takes a user object as input and retrieves the latest payment from the user's payments history. 
# The details method formats the invoice details, including the user's name, payment amount, and a success message. 
# The class focuses solely on generating the invoice and providing invoice-related information.

class UserInvoice
  attr_accessor :name

  def initialize(user)
    @user = user
  end

  def product
    @user.payments.last
  end

  def details
    "NAME: #{@user.first_name} #{@user.last_name} , AMOUNT: #{product.amount}, payment successful"
  end
end

# EmailSender: This class is responsible for sending emails. 
# The send_invoice_email method takes a user and invoice as parameters and calls the appropriate mailer (UserMailer.invoice_email) to generate the email.
# The send_email method encapsulates the logic of actually sending the email. This class has a single responsibility of handling email-related functionality.

class EmailSender
  def send_invoice_email(user,invoice)
    send_email(UserMailer.invoice_email(user,invoice))
  end

  private

  def send_email(mail)
    mail.deliver_now
  end
end

# user=UserInvoice.new(User.first)
# user.details
# email=EmailSender.new
# email.send_invoice_email(User.first,u.details)
