class AddMemberIdToLikes < ActiveRecord::Migration[6.1]
  def change
    add_column :likes, :member_id, :integer
  end
end
