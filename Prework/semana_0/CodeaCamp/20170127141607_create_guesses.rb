class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :answers_correct
      t.integer :answers_incorrect

      t.timestamps
    end
  end
end
