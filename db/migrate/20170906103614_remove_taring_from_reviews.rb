class RemoveTaringFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :taring, :integer
  end
end
