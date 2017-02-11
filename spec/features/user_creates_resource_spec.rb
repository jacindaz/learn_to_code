require "rails_helper"

feature "User creates new resource" do
  scenario "successfully" do
    visit new_resource_path

    fill_in "Title", with: "Resource title"
    fill_in "Url", with: "www.fakeresource.com"
    select "Ruby", from: "Language"
    fill_in "Tech", with: "Rails"
    check "Free"
    fill_in "Description", with: "Resource description blah blah blah."

    click_on "Create"

    expect(page).to have_css "h3"
    expect(page).to have_content "Rails"
    expect(page).to have_content "Resource title"
    expect(page).to have_content "www.fakeresource.com"
  end
end
