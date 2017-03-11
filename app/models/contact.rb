# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  phone      :string
#  subject    :string
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  login      :string
#

class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true,
      format: { with: /\A[a-zA-Z0-9\.\-_+]{2,}@[a-z]{2,}(\.[a-z]{2,}){1,3}\z/ }
end


=begin
  introduce vaildation for presence of name and email.
  have a submit button with no need to go back and edit.
  Prevent any user (except admin) from viewing a list of
  contact info.
  Set it up to auto-email me with a new contact request.
=end
