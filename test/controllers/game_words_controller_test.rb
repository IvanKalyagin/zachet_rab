require "test_helper"

class GameWordsControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get game_words_input_url
    assert_response :success
  end

  test "should get result" do
    get game_words_result_url
    assert_response :success
  end

  test "should get progress" do
    get game_words_progress_url
    assert_response :success
  end
end
