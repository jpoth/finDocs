class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.date :startDate
      t.date :endDate
      t.float :AmtInvested

      t.timestamps
    end
  end
end
