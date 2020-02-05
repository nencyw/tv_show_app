class ChannelShow < ApplicationRecord
  belongs_to :channel
  acts_as_favoritable
end
