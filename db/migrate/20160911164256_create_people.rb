class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :identity
      t.string :cpf
      t.date :birth

      t.timestamps
    end
  end
end
