
task import_data: :environment do
  Rake::Task["create_vha_facilities"].invoke
  Rake::Task["create_vba_facilities"].invoke
  Rake::Task["create_vha_services"].invoke
  Rake::Task["create_vba_services"].invoke
end
