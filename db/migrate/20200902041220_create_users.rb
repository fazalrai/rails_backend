class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :email
      t.text :password
      t.string :full_name
      t.text :user_name

      t.timestamps
    end
  end
end
