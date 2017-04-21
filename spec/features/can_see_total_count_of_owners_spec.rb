require "rails_helper"

RSpec.feature "User visits page" do
  scenario "and sees total count of owners by cleaner next to their name" do
    @owners = @cleaner.owners.create(first_name: "Jessica", last_name: "Jones")
    @cleaner = Cleaner.create(company_name: "Green")

  visit owners_path

  expect(page).to have_content("Green has 2 employers")
  expect(page).to have_content("Blue has 2 employers")
  end
end
