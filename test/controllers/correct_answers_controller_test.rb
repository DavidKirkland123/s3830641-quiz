require "test_helper"

class CorrectAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @correct_answer = correct_answers(:one)
  end

  test "should get index" do
    get correct_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_correct_answer_url
    assert_response :success
  end

  test "should create correct_answer" do
    assert_difference('CorrectAnswer.count') do
      post correct_answers_url, params: { correct_answer: { answer_a_correct: @correct_answer.answer_a_correct, answer_b_correct: @correct_answer.answer_b_correct, answer_c_correct: @correct_answer.answer_c_correct, answer_d_correct: @correct_answer.answer_d_correct, answer_e_correct: @correct_answer.answer_e_correct, answer_f_correct: @correct_answer.answer_f_correct, quizquestion_id: @correct_answer.quizquestion_id } }
    end

    assert_redirected_to correct_answer_url(CorrectAnswer.last)
  end

  test "should show correct_answer" do
    get correct_answer_url(@correct_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_correct_answer_url(@correct_answer)
    assert_response :success
  end

  test "should update correct_answer" do
    patch correct_answer_url(@correct_answer), params: { correct_answer: { answer_a_correct: @correct_answer.answer_a_correct, answer_b_correct: @correct_answer.answer_b_correct, answer_c_correct: @correct_answer.answer_c_correct, answer_d_correct: @correct_answer.answer_d_correct, answer_e_correct: @correct_answer.answer_e_correct, answer_f_correct: @correct_answer.answer_f_correct, quizquestion_id: @correct_answer.quizquestion_id } }
    assert_redirected_to correct_answer_url(@correct_answer)
  end

  test "should destroy correct_answer" do
    assert_difference('CorrectAnswer.count', -1) do
      delete correct_answer_url(@correct_answer)
    end

    assert_redirected_to correct_answers_url
  end
end
