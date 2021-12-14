require './spec_helper.rb'

describe "User Login" do
  it "should be able to login and start a project and sign-out successfully" do 
    binding.pry
    visit("http://app.aks-cicd-8673.cnvrg.io/users/sign_in")
    binding.pry
    find(:xpath, "//input[@name='email']").click
    find(:xpath, "//input[@name='password']").click
    find(:xpath, "//button[@type='submit']").click
    expect(page).to have_text("Start a new project")
    find(:xpath, "//a[@class='rounded-button solid']").click
    find(:xpath, "//div[@class='field-input']/input").click
    find(:xpath, "//a[@class='loading-button button button submit']/span").click
    find(:xpath, "//*[@data-icon='file']").click
    find(:xpath, "//*[@alt='Dragdrop']").click
    find(:xpath, "//*[@id='reset-dropzone']").click
    find(:xpath, "//*[@id='submit-all-files']").click
    find(:xpath, "//input[@id='commit_msg']").click
    find(:xpath, "//input[@value='Sync ']").click
    visit("http://app.aks-cicd-8673.cnvrg.io/testing00/projects/testing00/experiments")
    expect(page).to have_text("Experiments")
    find(:xpath, "//a[@class='new-exp-button']").click
    find(:xpath, "//*[@id='input-1']").click
    find(:xpath, "//h2[contains(text(),'Environment')]").click
    find(:xpath, "//span[contains(text(),'Run')]").click
    end
end
