class AddGenderToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :gender, :integer
    add_column :users, :dob, :date
  end
end
