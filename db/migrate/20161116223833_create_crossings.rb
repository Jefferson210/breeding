class CreateCrossings < ActiveRecord::Migration
  def change
    create_table :crossings do |t|
      t.string :codeCrossing
      t.integer :numCrossing
      t.integer :year
      t.integer :week
      t.string :effective
      t.decimal :percentageEffective
      t.string :dateHarvest
      t.integer :numSeed
      t.string :father
      t.string :fatherPicture
      t.string :mother
      t.string :motherPicture

      t.timestamps
    end
  end
end
