class MailFromSupplierMailer < ApplicationMailer
  default :from => 'kohei.miyatake@gmail.com'

  def send_mail_to_buyer(buyer, supplier, part)
    @buyer = buyer
    @supplier = supplier
    @part = part
    mail(
      :to => 'kohei.miyatake@gmail.com',
      :subject => "#{@supplier}から#{@part}についての問い合わせです。"
    )
  end
end
