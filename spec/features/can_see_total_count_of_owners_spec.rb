require 'rails_helper'

RSpec.feature "User visits owners/:id page" do
  scenario "user sees the cleaners the owner employs to clean rentals" do
    @owner = Owner.create(first_name: "Jessica", last_name: "Jones")
    @cleaner1 = Cleaner.create(type: "Green")
    @cleaner2 = Cleaner.create(type: "Blue")

    @oc = owner.cleaners << cleaner1, cleaner2

    visit owner_cleaners_path

    expect(page).to have_content("Jessica")
    expect(page).to have_content("Jones")
  end
end
