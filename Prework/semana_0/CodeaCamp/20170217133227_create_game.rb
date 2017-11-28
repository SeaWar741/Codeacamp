class CreateGame < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :player ,index: true
      t.integer :subs_destroyed
      t.boolean :winner?

      t.timestamps      
    end
  end
end
