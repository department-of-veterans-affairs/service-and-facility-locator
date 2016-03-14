require "csv"

task create_vha_services: :environment do
  csv_text = File.read("db/seed/serviceAtFacilityTableSeed.csv")
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |row|
    Service.create!(row.to_hash)
  end
end

task create_vba_services: :environment do
  csv_text = File.read("db/seed/vba_services_data.csv")
  csv = CSV.parse(csv_text, headers: true)
  csv.each do |row|
    VBAService.create!(row.to_hash)
  end
end
