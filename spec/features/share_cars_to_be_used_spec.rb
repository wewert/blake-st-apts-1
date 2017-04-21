require "rails_helper"

RSpec.feature "When a user visits share cars" do
  scenario "user can see list of cars" do
    car1 = Car.create(type: "Sport")
    car2 = Car.create(type: "Family")
    car3 = Car.create(type: "Off-Road")
    car4 = Car.create(type: "Junker")

    visit cars_path

    expect(page).to have_content("Sport")
    expect(page).to have_content("Family")
    expect(page).to have_content("Off-Road")
    expect(page).to have_content("Junker")
  end
end
