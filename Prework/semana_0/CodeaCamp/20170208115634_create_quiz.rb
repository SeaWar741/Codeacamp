class CreateQuiz < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.belongs_to :history, index: true
      t.string :name

      t.timestamps      
    end
  end
end
