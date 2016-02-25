require "rails_helper"

RSpec.describe Facility, type: :model do
  pending "Tests should be added to #{__FILE__} when validations are added"

  it "has a valid factory" do
    expect(FactoryGirl.create(:facility)).to be_valid
  end
end
