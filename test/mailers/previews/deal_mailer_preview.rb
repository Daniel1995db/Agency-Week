# Preview all emails at http://localhost:3000/rails/mailers/deal_mailer
class DealMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/deal_mailer/deal_email
  def deal_email
    DealMailer.deal_email
  end

end
