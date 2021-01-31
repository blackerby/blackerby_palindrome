# frozen_string_literal: true

require "test_helper"

class BlackerbyPalindromeTest < Minitest::Test

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_non_palindrome
    refute 12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

  def test_empty_string_not_palindrome
    refute "".palindrome?
  end

  def test_spaces_not_palindrome
    refute "     ".palindrome?
  end

  def test_tabs_not_palindrome
    refute "\t\t\t".palindrome?
  end

  def test_newlines_not_palindrome
    refute "\n\n\n".palindrome?
  end

  def test_mixed_whitespace_not_palindrome
    refute "  \t   \n\t  ".palindrome?
  end
end
