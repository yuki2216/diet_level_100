class Comment < ApplicationRecord
  belongs_to :diary
  bwlongs_to :user
end
