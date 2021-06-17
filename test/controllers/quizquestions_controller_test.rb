require "test_helper"

class QuizquestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quizquestion = quizquestions(:one)
  end

  test "should get index" do
    get quizquestions_url
    assert_response :success
  end

  test "should get new" do
    get new_quizquestion_url
    assert_response :success
  end

  test "should create quizquestion" do
    assert_difference('Quizquestion.count') do
      post quizquestions_url, params: { quizquestion: { category: @quizquestion.category, correct_answer: @quizquestion.correct_answer, description: @quizquestion.description, difficulty: @quizquestion.difficulty, explanation: @quizquestion.explanation, multiple_correct_answers: @quizquestion.multiple_correct_answers, question: @quizquestion.question, quizquestion_id: @quizquestion.quizquestion_id, tip: @quizquestion.tip } }
    end

    assert_redirected_to quizquestion_url(Quizquestion.last)
  end

  test "should show quizquestion" do
    get quizquestion_url(@quizquestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_quizquestion_url(@quizquestion)
    assert_response :success
  end

  test "should update quizquestion" do
    patch quizquestion_url(@quizquestion), params: { quizquestion: { category: @quizquestion.category, correct_answer: @quizquestion.correct_answer, description: @quizquestion.description, difficulty: @quizquestion.difficulty, explanation: @quizquestion.explanation, multiple_correct_answers: @quizquestion.multiple_correct_answers, question: @quizquestion.question, quizquestion_id: @quizquestion.quizquestion_id, tip: @quizquestion.tip } }
    assert_redirected_to quizquestion_url(@quizquestion)
  end

  test "should destroy quizquestion" do
    assert_difference('Quizquestion.count', -1) do
      delete quizquestion_url(@quizquestion)
    end

    assert_redirected_to quizquestions_url
  end
end
