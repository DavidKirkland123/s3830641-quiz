require "application_system_test_case"

class QuizquestionsTest < ApplicationSystemTestCase
  setup do
    @quizquestion = quizquestions(:one)
  end

  test "visiting the index" do
    visit quizquestions_url
    assert_selector "h1", text: "Quizquestions"
  end

  test "creating a Quizquestion" do
    visit quizquestions_url
    click_on "New Quizquestion"

    fill_in "Category", with: @quizquestion.category
    fill_in "Correct answer", with: @quizquestion.correct_answer
    fill_in "Description", with: @quizquestion.description
    fill_in "Difficulty", with: @quizquestion.difficulty
    fill_in "Explanation", with: @quizquestion.explanation
    check "Multiple correct answers" if @quizquestion.multiple_correct_answers
    fill_in "Question", with: @quizquestion.question
    fill_in "Quizquestion", with: @quizquestion.quizquestion_id
    fill_in "Tip", with: @quizquestion.tip
    click_on "Create Quizquestion"

    assert_text "Quizquestion was successfully created"
    click_on "Back"
  end

  test "updating a Quizquestion" do
    visit quizquestions_url
    click_on "Edit", match: :first

    fill_in "Category", with: @quizquestion.category
    fill_in "Correct answer", with: @quizquestion.correct_answer
    fill_in "Description", with: @quizquestion.description
    fill_in "Difficulty", with: @quizquestion.difficulty
    fill_in "Explanation", with: @quizquestion.explanation
    check "Multiple correct answers" if @quizquestion.multiple_correct_answers
    fill_in "Question", with: @quizquestion.question
    fill_in "Quizquestion", with: @quizquestion.quizquestion_id
    fill_in "Tip", with: @quizquestion.tip
    click_on "Update Quizquestion"

    assert_text "Quizquestion was successfully updated"
    click_on "Back"
  end

  test "destroying a Quizquestion" do
    visit quizquestions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quizquestion was successfully destroyed"
  end
end
