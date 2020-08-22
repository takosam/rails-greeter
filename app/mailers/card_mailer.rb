class CardMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.card_mailer.final_card.subject
  #
  def final_card
    @card = params[:card]
    mail(to: @card.recipient_email, subject: "You got a Greet!")
  end
end