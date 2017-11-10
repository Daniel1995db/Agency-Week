require 'test_helper'

class DealMailerTest < ActionMailer::TestCase
  test "deal_email" do
    mail = DealMailer.deal_email
    assert_equal "Deal email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
