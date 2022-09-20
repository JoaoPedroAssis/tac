class CreateUserLogins < ActiveRecord::Migration[7.0]
  def change
    create_table :user_logins do |t|
      t.string :name
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
