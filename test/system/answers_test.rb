require "application_system_test_case"

class AnswersTest < ApplicationSystemTestCase
  setup do
    @answer = answers(:one)
  end

  test "visiting the index" do
    visit answers_url
    assert_selector "h1", text: "Answers"
  end

  test "creating a Answer" do
    visit answers_url
    click_on "New Answer"

    fill_in "Answer a", with: @answer.answer_a
    fill_in "Answer b", with: @answer.answer_b
    fill_in "Answer c", with: @answer.answer_c
    fill_in "Answer d", with: @answer.answer_d
    fill_in "Answer e", with: @answer.answer_e
    fill_in "Answer f", with: @answer.answer_f
    fill_in "Quizquestion", with: @answer.quizquestion_id
    click_on "Create Answer"

    assert_text "Answer was successfully created"
    click_on "Back"
  end

  test "updating a Answer" do
    visit answers_url
    click_on "Edit", match: :first

    fill_in "Answer a", with: @answer.answer_a
    fill_in "Answer b", with: @answer.answer_b
    fill_in "Answer c", with: @answer.answer_c
    fill_in "Answer d", with: @answer.answer_d
    fill_in "Answer e", with: @answer.answer_e
    fill_in "Answer f", with: @answer.answer_f
    fill_in "Quizquestion", with: @answer.quizquestion_id
    click_on "Update Answer"

    assert_text "Answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Answer" do
    visit answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Answer was successfully destroyed"
  end
end
