class RemoveCodeOfColors < ActiveRecord::Migration
  def change
      remove_column :colors, :code
  end
end
