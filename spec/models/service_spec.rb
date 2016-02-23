require "rails_helper"

RSpec.describe Service, type: :model do
  pending "Tests should be added to #{__FILE__} when validations are added"

  it "has a valid factory" do
    expect(FactoryGirl.create(:service)).to be_valid
  end
end
