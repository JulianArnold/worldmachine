class Contact < ActiveRecord::Base
  attr_accessor :contact

end


=begin
  introduce vaildation for presence of name and email.
  have a submit button with no need to go back and edit.
  Prevent any user (except admin) from viewing a list of
  contact info.
  Set it up to auto-email me with a new contact request.
=end