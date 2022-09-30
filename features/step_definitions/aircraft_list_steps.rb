# frozen_string_literal: true
Given('an aircraft') do
  FactoryBot.create :aircraft
end

Given('I open aircraft list page') do
  visit aircraft_index_path
end

Then('I see {string} header') do |string|
  header = find('h1')
  expect(header).to have_content(string)
end

Given('I can see {string} message') do |string|
  expect(page).to have_content(string)
end

Given('I can see aircraft table') do
  row = find(:xpath, ".//table/thead/tr")
  within(row) do
    expect(row).to have_content('AC Number')
    expect(row).to have_content('Fuel Consumption')
    expect(row).to have_content('CO2')
    expect(row).to have_content('Speed')
    expect(row).to have_content('Distance')
    expect(row).to have_content('Runway Length')
  end
end

Then('I do not see aircraft table') do
  expect(page).to have_no_selector('table')
end

Then('I do not see {string} message') do |string|
  expect(page).to have_no_content(string)
end

Then('I can see aircraft data in the table') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('I can see both aircraft data in the table') do
  pending # Write code here that turns the phrase above into concrete actions
end
