Given /^I am on the admin homepage$/ do
  visit '/admin'
end

When /^I add a chapter with a name$/ do
  click_button 'Add Chapter'
end

Then /^I can see that chapter on the chapters page$/ do
  page.should have_content 'Chapter1'
end
