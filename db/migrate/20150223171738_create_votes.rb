class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :post
      t.references :comment
      t.references :user

      t.timestamps
    end
  end
end
