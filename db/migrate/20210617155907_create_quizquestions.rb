class CreateQuizquestions < ActiveRecord::Migration[6.1]
  def change
    create_table :quizquestions do |t|
      t.integer :quizquestion_id
      t.string :question
      t.string :description
      t.boolean :multiple_correct_answers
      t.string :correct_answer
      t.string :explanation
      t.string :tip
      t.string :category
      t.string :difficulty

      t.timestamps
    end
  end
end
