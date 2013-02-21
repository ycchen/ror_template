require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def new_user(attributes = {})
  	attributes[:display_name] ||= 'testUser'
  	attributes[:email] ||= 'foo@test.com'
  	# attributes[:password] ||= 'foobar'
  	# attributes[:password_confirmation] ||= attributes[:password]
  	user = User.new(attributes)
  	user.valid?
  	user  	
  end

  def test_truth_is_true
  	assert true, "True is what it expected!"
  end

  def test_valid
  	assert new_user.valid?
  end

  def test_create_and_destroy
    initial_rec_count = User.count
    new_rec = new_user
    new_rec.save
    assert_equal(initial_rec_count +1, User.count, "recordcount should increase")

    new_rec.destroy
    assert_equal(initial_rec_count, User.count, "recordcount should decrease")
  end

  def test_find_foo_user
    test_user = User.find_by_display_name('foo_9')
    f_user = 'foo_9'
    assert_equal(test_user.display_name, f_user, "record should exists")
  end
end
