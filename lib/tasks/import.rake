#lib/tasks/import.rake
require 'csv'
desc "Import a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do
    #Colors
    CSV.foreach('db/data/colors.csv', :headers => true) do |row|
        Color.create!(row.to_hash)
    end
end