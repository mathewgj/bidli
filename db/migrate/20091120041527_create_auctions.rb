class CreateAuctions < ActiveRecord::Migration
  def self.up
    create_table :auctions do |t|
      t.string :title
      t.string :startbid
      t.string :endtime
      t.string :description
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :auctions
  end
end
