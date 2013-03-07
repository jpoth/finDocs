class CreateUserLogins < ActiveRecord::Migration
  def change
    create_table :userlogin do |t|
      t.string :name, null=>false 
      t.string :password, :null =>false
      t.date :dateCreated
      t.string :Email , :null =>false

      t.timestamps
    end
  end
end
