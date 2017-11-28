class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :card, index: true
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :correct_answer

      t.timestamps      
    end
  end
end
