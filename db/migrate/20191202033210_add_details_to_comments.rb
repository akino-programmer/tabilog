class AddDetailsToComments < ActiveRecord::Migration[5.2]
  def up
    add_column :comments, :rate, :integer
  end
end
