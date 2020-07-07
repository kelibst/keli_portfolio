class AddDescriptionToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :description, :text
  end
end
