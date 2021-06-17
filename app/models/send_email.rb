class SendEmail
  
  # using SendGrid's Ruby Library
  # https://github.com/sendgrid/sendgrid-ruby
  require 'sendgrid-ruby'
  include SendGrid

  def self.test_email(buyer, supplier, part, text)
    from = Email.new(email: ENV['EMAIL'])
    to = Email.new(email: buyer.email)
    subject = "#{supplier.company_name}より#{part.name}についての問い合わせです。"
    content = Content.new(type: 'text/plain', value: "#{text}\n以上\n#{supplier.email}宛に返信をお願いします。")
    mail = Mail.new(from, subject, to, content)
    
    sg = SendGrid::API.new(api_key: ENV["SENDGRID_WEB_API_KEY"])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end
end