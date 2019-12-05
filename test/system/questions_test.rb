require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # [...]

  test "asking a question yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "why?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end
end
