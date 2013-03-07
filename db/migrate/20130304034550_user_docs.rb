class UserDocs < ActiveRecord::Migration
  def self.up
	create_table:documents_userlogin, :id => false do |t|
		t.integer :userId
		t.integer :documentId
  	end
  end
  def self.down
	drop_table :documents_userlogin
  end
end

