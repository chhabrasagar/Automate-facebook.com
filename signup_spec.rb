require './spec_helper.rb'

describe "User Sign Up" do
  it "should be able to sign up as a new user and start a project" do 
    visit("https://www.facebook.com/signup")
    binding.pry
    find(:xpath, "//input[@name='firstname']").click
    find(:xpath, "//input[@name='lastname']").click
    find(:xpath, "//input[@name='reg_email__']").click
    find(:xpath, "//input[@autocomplete='new-password']").click
    find(:xpath, "//select[@aria-label='Day']").click 
    find(:xpath, "//select[@aria-label='Month']").click 
    find(:xpath, "//select[@aria-label='Year']").click 
    find(:xpath, "//label[contains(text(),'Female')]").click 
    find(:xpath, "//label[contains(text(),'Male')]").click
    find(:xpath, "//label[contains(text(),'Custom')]").click 
    find(:xpath, "//select[@aria-label='Select your pronoun']").click 
    find(:xpath, "//button[contains(text(),'Sign Up')]").click
  end
end