class CreateCorrectAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :correct_answers do |t|
      t.boolean :answer_a_correct
      t.boolean :answer_b_correct
      t.boolean :answer_c_correct
      t.boolean :answer_d_correct
      t.boolean :answer_e_correct
      t.boolean :answer_f_correct
      t.integer :quizquestion_id

      t.timestamps
    end
  end
end
