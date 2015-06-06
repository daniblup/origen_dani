class Episode < ActiveRecord::Base
  belongs_to :serie
  has_and_belongs_to_many :users
end
