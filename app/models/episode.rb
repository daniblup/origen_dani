class Episode < ActiveRecord::Base
  belongs_to :serie
  has_many :users
end
