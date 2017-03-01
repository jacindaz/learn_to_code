require 'rails_helper'

describe Resource do
  it "can have tags added to it" do
    resource = create(:resource)
    tags = ["new_tag_1", "dupe_tag", "dupe_tag"]
    resource.tag_list.add(tags)

    expect(resource.tag_list.sort).to eq(tags.uniq.sort)
  end
end
