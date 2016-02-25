require "csv"

task create_facilities: :environment do
  csv_text = File.read("db/seed/facilityTableSeedUTF8.csv")
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |row|
    Facility.create!(row.to_hash)
  end
end
