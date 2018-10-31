class CreateMailer < ApplicationMailer
  def create_mail(picture)
    @picture = picture
    mail to:'自分のメアド', subject: "写真投稿の確認メール"
  end
end
