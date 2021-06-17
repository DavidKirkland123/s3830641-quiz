require "application_system_test_case"

class CorrectAnswersTest < ApplicationSystemTestCase
  setup do
    @correct_answer = correct_answers(:one)
  end

  test "visiting the index" do
    visit correct_answers_url
    assert_selector "h1", text: "Correct Answers"
  end

  test "creating a Correct answer" do
    visit correct_answers_url
    click_on "New Correct Answer"

    check "Answer a correct" if @correct_answer.answer_a_correct
    check "Answer b correct" if @correct_answer.answer_b_correct
    check "Answer c correct" if @correct_answer.answer_c_correct
    check "Answer d correct" if @correct_answer.answer_d_correct
    check "Answer e correct" if @correct_answer.answer_e_correct
    check "Answer f correct" if @correct_answer.answer_f_correct
    fill_in "Quizquestion", with: @correct_answer.quizquestion_id
    click_on "Create Correct answer"

    assert_text "Correct answer was successfully created"
    click_on "Back"
  end

  test "updating a Correct answer" do
    visit correct_answers_url
    click_on "Edit", match: :first

    check "Answer a correct" if @correct_answer.answer_a_correct
    check "Answer b correct" if @correct_answer.answer_b_correct
    check "Answer c correct" if @correct_answer.answer_c_correct
    check "Answer d correct" if @correct_answer.answer_d_correct
    check "Answer e correct" if @correct_answer.answer_e_correct
    check "Answer f correct" if @correct_answer.answer_f_correct
    fill_in "Quizquestion", with: @correct_answer.quizquestion_id
    click_on "Update Correct answer"

    assert_text "Correct answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Correct answer" do
    visit correct_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Correct answer was successfully destroyed"
  end
end
