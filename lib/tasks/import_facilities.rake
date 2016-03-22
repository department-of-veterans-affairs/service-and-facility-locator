require "csv"

task create_vha_facilities: :environment do
  csv_text = File.read("db/seed/facilityTableSeedUTF8.csv")
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |row|
    Facility.create!(row.to_hash)
  end
end

task create_vba_facilities: :environment do
  csv_text = File.read("db/seed/vba_facility_data.csv")
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |row|
    VBAFacility.create!(row.to_hash)
  end
end

task create_nca_facilities: :environment do
  csv_text = File.read("db/seed/nca_facility_data.csv")
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |row|
    NCAFacility.create!(row.to_hash)
  end
end