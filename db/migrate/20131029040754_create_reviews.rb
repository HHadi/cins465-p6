class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :user_id
      t.integer :doi_id

      t.timestamps
    end
  end
end



