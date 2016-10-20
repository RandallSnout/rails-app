class FixUserTablePlease < ActiveRecord::Migration
  def change
  	change_column :users, :password, :digest
  	add_column :users, :location, :string
  end
end
