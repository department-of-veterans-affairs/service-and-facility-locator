require "csv"

task create_services: :environment do
  csv_text = File.read("db/seed/serviceAtFacilityTableSeed.csv")
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |row|
    Service.create!(row.to_hash)
  end
end
