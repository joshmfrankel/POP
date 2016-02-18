class Tag < ActiveRecord::Base
  belongs_to :journal
  belongs_to :methodology
end
