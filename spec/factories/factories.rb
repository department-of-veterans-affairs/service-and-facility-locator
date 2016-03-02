FactoryGirl.define do
  factory :facility do |f|
    f.facility_id "402"
    f.location_descriptive_name_common_name "Omaha VAMC"
    f.classification "VA Medical Center (VAMC)"
  end

  factory :service do |f|
    f.facility_id "402"
    f.service_level_1 "Complementary & Alternative Medicine"
    f.service_level_2 "Chiropractic  Services"
  end
end
