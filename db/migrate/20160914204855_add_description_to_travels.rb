class AddDescriptionToTravels < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :description, :text
  end
end
