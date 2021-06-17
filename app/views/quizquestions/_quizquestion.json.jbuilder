json.extract! quizquestion, :id, :quizquestion_id, :question, :description, :multiple_correct_answers, :correct_answer, :explanation, :tip, :category, :difficulty, :created_at, :updated_at
json.url quizquestion_url(quizquestion, format: :json)
