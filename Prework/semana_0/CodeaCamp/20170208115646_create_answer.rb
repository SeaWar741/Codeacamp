class CreateAnswer < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :quiz, index: true
      t.belongs_to :question, index: true
      t.string :text
      t.timestamps  
    end
  end
end
