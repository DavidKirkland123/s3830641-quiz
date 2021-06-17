require "test_helper"

class AnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer = answers(:one)
  end

  test "should get index" do
    get answers_url
    assert_response :success
  end

  test "should get new" do
    get new_answer_url
    assert_response :success
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post answers_url, params: { answer: { answer_a: @answer.answer_a, answer_b: @answer.answer_b, answer_c: @answer.answer_c, answer_d: @answer.answer_d, answer_e: @answer.answer_e, answer_f: @answer.answer_f, quizquestion_id: @answer.quizquestion_id } }
    end

    assert_redirected_to answer_url(Answer.last)
  end

  test "should show answer" do
    get answer_url(@answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_answer_url(@answer)
    assert_response :success
  end

  test "should update answer" do
    patch answer_url(@answer), params: { answer: { answer_a: @answer.answer_a, answer_b: @answer.answer_b, answer_c: @answer.answer_c, answer_d: @answer.answer_d, answer_e: @answer.answer_e, answer_f: @answer.answer_f, quizquestion_id: @answer.quizquestion_id } }
    assert_redirected_to answer_url(@answer)
  end

  test "should destroy answer" do
    assert_difference('Answer.count', -1) do
      delete answer_url(@answer)
    end

    assert_redirected_to answers_url
  end
end
