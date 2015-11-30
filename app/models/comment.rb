class Comment < ActiveRecord::Base
  belongs_to :article # referred to as an 'association' read about it a little later on
end
