require './spec_helper.rb'

describe "User Login" do
  it "should be able to sign up as a new user and start a project" do 
    binding.pry
    visit("http://app.aks-cicd-8673.cnvrg.io/users/sign_up")
    binding.pry
    find(:xpath, "//input[@name='email']").click
    find(:xpath, "//input[@name='username']").click
    find(:xpath, "//input[@name='password']").click
    find(:xpath, "//button[@type='submit']").click
    find(:xpath, "//input[@name='organization']").click
    find(:xpath, "//button[@type='submit']").click
    find(:xpath, "//div[@class='label']").click
    find(:xpath, "//button[@type='button'][1]").click
    find(:xpath, "//button[@type='button'][2]").click
    find(:xpath, "//div[contains(text(),'PyCharm')]/..").click
    find(:xpath, "//*[@class='base-button next-button cg-btn-primary']").click
    find(:xpath, "//*[contains(text(),'Computer Vision')]").click
    find(:xpath, "//*[@class='base-button next-button cg-btn-primary']").click
    expect(page).to have_text("Start a new project")
    
 end
end
