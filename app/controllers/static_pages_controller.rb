class StaticPagesController < ApplicationController
  def home
    email = "drizzle@launchacademy.com"
    NavigationMailer.visit_home(email).deliver_later
  end
end
