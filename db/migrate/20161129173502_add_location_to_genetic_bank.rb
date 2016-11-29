class AddLocationToGeneticBank < ActiveRecord::Migration
  def change
      add_column :genetic_banks, :location, :string, :unique => true
      add_column :genetic_banks, :tradeMark, :string
      add_column :genetic_banks, :denomination, :string, :unique => true
  end
end
