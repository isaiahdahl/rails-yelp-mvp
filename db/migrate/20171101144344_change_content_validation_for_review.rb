class ChangeContentValidationForReview < ActiveRecord::Migration[5.1]
  def change
    change_column :reviews, :content, :string, null: false

  end
end
