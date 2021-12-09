require './spec_helper.rb'

describe "User Login" do
  it "should be able to login and start a project and sign-out successfully" do 
    visit("https://www.facebook.com/")
        
        login_details ={:password => "testemail08", :email=> "testemail08@gmail.com"}
        binding.pry
        find(:xpath, "//input[@id='email']").set(login_details[:email])
        find(:xpath, "//input[@type='password']").set(login_details[:password])
        find(:xpath, "//button[@type='submit']").click
        find(:xpath, "//a[contains(text(),'Help')]").click
        find(:xpath, "//a[@id='back']").click
        find(:xpath, "//a[text()='Forgotten password?']").click
        find(:xpath, "//input[@aria-label='Mobile number']").click
        find(:xpath, "//button[@type='submit']").click
        find(:xpath, "//button[@name='reset_action']").click
        find(:xpath, "//div[@class='pts']/a").click
        find(:xpath, "//a[@name='reset_action']").click
       end
end