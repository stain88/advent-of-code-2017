#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'day01'

class Day01Test < Minitest::Test

  def test_part_1_example_1
    assert_equal 3, Day01.captcha_next("1122")
  end

  def test_part_1_example_2
    assert_equal 4, Day01.captcha_next("1111")
  end

  def test_part_1_example_3
    assert_equal 0, Day01.captcha_next("1234")
  end

  def test_part_1_example_4
    assert_equal 9, Day01.captcha_next("91212129")
  end

  def test_part_2_example_1
    assert_equal 6, Day01.captcha_half("1212")
  end

  def test_part_2_example_2
    assert_equal 0, Day01.captcha_half("1221")
  end

  def test_part_2_example_3
    assert_equal 4, Day01.captcha_half("123425")
  end

  def test_part_2_example_4
    assert_equal 12, Day01.captcha_half("123123")
  end

  def test_part_2_example_5
    assert_equal 4, Day01.captcha_half("12131415")
  end

end
