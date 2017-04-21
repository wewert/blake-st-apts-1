require "rails_helper"

RSpec.feature "When I visit users page" do
  scenario "I see a list of users" do
    user1 = User.create(first_name: "Ken", last_name: "Lee")
    user2 = User.create(first_name: "John", last_name: "Doe")
    user3 = User.create(first_name: "Jane", last_name: "Doe")
    user4 = User.create(first_name: "Betsy", last_name: "Smith")

    visit users_path

    expect(page).to have_content("Ken Lee")
    expect(page).to have_content("John Doe")
    expect(page).to have_content("Jane Doe")
    expect(page).to have_content("Betsy Smith")
  end
end
