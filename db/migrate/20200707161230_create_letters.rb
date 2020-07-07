class CreateLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.string :name
      t.string :email
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
