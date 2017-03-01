require "rails_helper"

feature "User views resource tags" do
  scenario "user can view tags on resources#show" do
    resource = create(:resource)
    resource.tag_list.add("tag1", "tag2")
    resource.save!

    visit resource_path(resource)

    expect(page).to have_content "tag1"
    expect(page).to have_content "tag2"
  end

  scenario "user can view tags on resources#index" do
    resource = create(:resource)
    resource.tag_list.add("tag1", "tag2")
    resource.save!

    visit resources_path

    expect(page).to have_content "tag1"
    expect(page).to have_content "tag2"
  end
end

feature "User adds tag to resource" do
  scenario "user can add tags" do
  end

  scenario "user can remove tags" do
  end

  scenario "tag added from a different resource can be re-used" do
  end
end
