class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.references :crossing, index: true
      t.integer :numIndividuals
      t.references :color, index: true
      t.decimal :headSize
      t.integer :numFlowering
      t.integer :numPetals
      t.string :form

      t.timestamps
    end
  end
end
