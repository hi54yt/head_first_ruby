require 'minitest/autorun'
require 'list_with_commas'

class TestWithCommas < Minitest::Test
  def setup
    @list = ListWithCommas.new
  end

  def test_it_with_one_word
    @list.items = ['apple']
    # assert(list.join == "apple", "Return value didn't equal 'apple'")
    assert_equal("apple", @list.join)
  end

  def test_it_join_two_words_with_and
    @list.items = ['apple', 'banana']
    assert(@list.join == "apple and banana")
  end

  def test_it_join_three_words_with_commas
    @list.items = ['apple', 'banana', 'grape']
    assert(@list.join == "apple, banana, and grape")
  end
end
