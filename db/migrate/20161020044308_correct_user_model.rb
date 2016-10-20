class CorrectUserModel < ActiveRecord::Migration
  def change
  	change_column :user, :password, :digest
  	add_column :user, :location, :string
  end
end
