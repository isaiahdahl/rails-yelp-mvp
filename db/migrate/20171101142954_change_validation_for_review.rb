class ChangeValidationForReview < ActiveRecord::Migration[5.1]
  def change
    change_column :reviews, :rating, :integer, null: false
  end
end
