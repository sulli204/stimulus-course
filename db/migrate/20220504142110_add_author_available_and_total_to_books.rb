class AddAuthorAvailableAndTotalToBooks < ActiveRecord::Migration[7.0]
  def self.up
    change_table :books do |t|
      t.string :author, null: false
      t.integer :available, default: 0
      t.integer :total, default: 0
    end
  end

  def self.down
    change_table :books do |t|
      t.remove :author
      t.remove :available
      t.remove :total
    end
  end
end
