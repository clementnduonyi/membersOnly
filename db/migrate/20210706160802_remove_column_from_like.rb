class RemoveColumnFromLike < ActiveRecord::Migration[6.1]
  def change
    remove_column :likes, :member_id 
    remove_column :likes, :post_id 
  end
end
