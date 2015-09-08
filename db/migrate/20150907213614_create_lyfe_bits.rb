class CreateLyfeBits < ActiveRecord::Migration
  def change
    create_table :lyfe_bits do |t|
      t.integer :user_id
      t.string :message
      t.integer :likes
      t.integer :dislikes
      t.timestamps
    end
  end
end
