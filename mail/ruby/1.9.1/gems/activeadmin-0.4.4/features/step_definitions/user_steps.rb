Given /^I am logged out$/ do
  if page.all(:css, "a", :text => "Logout").size > 0
    click_link "Logout"
  end
end

Given /^I am logged in$/ do
  step 'an admin user "admin@example.com" exists'

  if page.all(:css, "a", :text => "Logout").size > 0
    click_link "Logout"
  end

  visit new_admin_user_session_path
  fill_in "Email", :with => "admin@example.com"
  fill_in "Password", :with => "password"
  click_button "Login"
end

Given /^an admin user "([^"]*)" exists$/ do |admin_email|
  user = AdminUser.find_or_create_by_email :email => admin_email,
                                           :password => "password",
                                           :password_confirmation => "password"

  unless user.persisted?
    puts "Coult not create an admin user #{admin_email}: #{user.errors.full_messages}"
    raise "Could not create an admin user"
  end
end
