class QuizController < ApplicationController
    def index
        file = open("quiz.json")
        json = file.read
        Quizquestion.create!(JSON.parse(json))
    end
end
