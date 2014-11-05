require "test_helper"

describe Identity do
  let(:identity) { Identity.new }

  it "must be valid" do
    identity.must_be :valid?
  end
end

# == Schema Information
#
# Table name: identities
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  provider   :string(255)
#  uid        :string(255)
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_identities_on_user_id  (user_id)
#
