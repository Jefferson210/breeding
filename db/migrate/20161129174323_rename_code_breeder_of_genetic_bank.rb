class RenameCodeBreederOfGeneticBank < ActiveRecord::Migration
  def change
      rename_column :genetic_banks, :codeBreeder, :code
  end
end
