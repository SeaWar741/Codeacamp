class CreateHistory < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
