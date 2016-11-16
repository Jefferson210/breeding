class AddImageToChild < ActiveRecord::Migration
    def change
        add_attachment :children, :image
    end
end
