class AddDescriptionToBands < ActiveRecord::Migration[5.0]
  def change
    add_column :bands, :description, :text
  end
end
