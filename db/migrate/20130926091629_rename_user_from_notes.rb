class RenameUserFromNotes < ActiveRecord::Migration
  def change
  	rename_column :notes, :user, :title
  end
end
