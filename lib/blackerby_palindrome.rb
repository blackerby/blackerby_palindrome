# frozen_string_literal: true

require_relative "blackerby_palindrome/version"

module BlackerbyPalindrome

  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include BlackerbyPalindrome
end

class Integer
  include BlackerbyPalindrome
end
