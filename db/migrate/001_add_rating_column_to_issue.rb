class AddRatingColumnToIssue < ActiveRecord::Migration
  def self.up
    add_column :issues, :rating, :integer
  end

  def self.down
    remove_column :issues, :rating
  end
end