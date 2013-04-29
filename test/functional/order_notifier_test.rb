require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Quick Whips Order Confirmation", mail.subject
    assert_equal ["vince@example.org"], mail.to
    assert_equal ["vincent.fantini@gmail.com"], mail.from
    assert_match /1 x 3-ft. White Nylon Whip/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Quick Whips Order Shipped", mail.subject
    assert_equal ["vince@example.org"], mail.to
    assert_equal ["vincent.fantini@gmail.com"], mail.from
    assert_match /1 x 3-ft. White Nylon Whip/, mail.body.encoded
    #assert_match /<td>1&times;<\/td>\s*<td>3-ft. White Nylon Whip<\/td>/, mail.body.encoded
  end

end
