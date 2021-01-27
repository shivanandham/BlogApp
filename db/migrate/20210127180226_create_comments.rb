class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
