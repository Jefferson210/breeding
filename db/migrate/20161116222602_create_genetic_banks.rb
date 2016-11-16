class CreateGeneticBanks < ActiveRecord::Migration
  def change
    create_table :genetic_banks do |t|
      t.string :codeBreeder
      t.string :breeder
      t.integer :analysedYear
      t.string :status
      t.string :variety
      t.integer :numPlants
      t.boolean :scent
      t.decimal :headSize
      t.integer :petals
      t.string :steamLength
      t.decimal :production
      t.decimal :opening
      t.text :flowerAbnormality
      t.string :sheets
      t.string :hawthorn
      t.string :relationship
      t.text :remarks

      t.timestamps
    end
  end
end
