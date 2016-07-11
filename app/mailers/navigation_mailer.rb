class NavigationMailer < ApplicationMailer
  def visit_home(email)
    @body = "Hey somebody visited my home page"
    mail(to: email, subject: "Home page visited")
  end
end
