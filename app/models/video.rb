class Video < ApplicationRecord
  validates_presence_of :title, :description, :url
end
