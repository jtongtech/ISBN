require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn <Minitest::Test
	def test_ten_digit_number_results_valid
		pro = 1234567891
		assert_equal('valid', isbn(pro))
	end
	def test_nine_digit_number_results_invalid
		pro = 123456789
		assert_equal('invalid', isbn(pro))
	end
	def test_thirteen_digit_number_results_valid
		pro = 1234567891234
		assert_equal('valid', isbn(pro))
	end
	def test_twenty_digit_number_results_invalid
		pro = 12345678912345678912
		assert_equal('invalid', isbn(pro))
	end
end

#test