class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :quiz, index: true
      t.string :text
   
      t.timestamps  
    end
  end
end
