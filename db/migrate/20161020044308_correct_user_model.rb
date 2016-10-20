class CorrectUserModel < ActiveRecord::Migration
  def change
  	change_column :users, :password, :digest
  end
end
