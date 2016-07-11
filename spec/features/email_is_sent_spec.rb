require 'rails_helper'

feature "email is sent" do
  scenario "when home is visited" do
    ActionMailer::Base.deliveries.clear
    visit root_path
    email = ActionMailer::Base.deliveries.last
    expect(email.to.first).to eq("drizzle@launchacademy.com")
    expect(email.subject).to eq("Home page visited")
    expect(email.body.to_s).to include("Hey somebody visited my home page")
  end
end
