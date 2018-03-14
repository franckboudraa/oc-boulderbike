require 'test_helper'

class SubmissionTest < ActiveSupport::TestCase
  test "should not save empty submission" do
    submission = Submission.new
    assert_not submission.save
  end

  test "should not save submission with present but empty params" do
    submission = Submission.new(last_name: '', first_name: '', email: '', slogan: '')
    assert_not submission.save
  end

  test "should not save submission with empty email" do
    submission = Submission.new(last_name: 'John', first_name: 'Doe', email: '', slogan: 'This is the best slogan')
    assert_not submission.save
  end

  test "should not save submission with empty slogan" do
    submission = Submission.new(last_name: 'John', first_name: 'Doe', email: 'john@doe.com', slogan: '')
    assert_not submission.save
  end

  test "should not save submission with slogan length < 10" do
    submission = Submission.new(last_name: 'John', first_name: 'Doe', email: 'john@doe.com', slogan: '123456789')
    assert_not submission.save
  end

  test "should not save submission with slogan length > 50" do
    submission = Submission.new(last_name: 'John', first_name: 'Doe', email: 'john@doe.com', slogan: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ABCDEFGHIJKLMNOPQRSTUVWXYZ')
    assert_not submission.save
  end

  test "should save submission with valid params and slogan length == 10" do
    submission = Submission.new(last_name: 'John', first_name: 'Doe', email: 'john@doe.com', slogan: '0123456789')
    assert submission.save
  end

  test "should save submission with valid params" do
    submission = Submission.new(last_name: 'Doe', first_name: 'John', email: 'john@doe.com', slogan: 'This is the best slogan')
    assert submission.save
  end
end
