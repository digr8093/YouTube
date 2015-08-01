class AddCommentToProducts < ActiveRecord::Migration
  def change
    add_column :products, :comment, :string
  end
end
