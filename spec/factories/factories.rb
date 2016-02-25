FactoryGirl.define do
  factory :facility do |f|
    f.ID "402"
    f.Location_Descriptive_Name_Common_Name "Omaha VAMC"
    f.Classification "VA Medical Center (VAMC)"
  end

  factory :service do |f|
    f.Facility_ID "402"
    f.Service_Level_1 "Complementary & Alternative Medicine"
    f.Service_Level_2 "Chiropractic  Services"
  end
end
