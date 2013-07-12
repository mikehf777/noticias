class MasterMailer < ActionMailer::Base
  default from: "sistema@noticias.promovision.mx",cc: ["mikehf7@gmail.com"]

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.diarias.subject
  #
  def enviar_comisiones(user,notifications)
    @user = user
    @notifications = notifications
    mail to: "#{user.email}" , subject: "Comisiones Asignadas del dia #{Date.today}"
  end
end