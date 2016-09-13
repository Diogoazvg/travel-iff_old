class AddTravelRefToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :travel, foreign_key: true
  end
end
