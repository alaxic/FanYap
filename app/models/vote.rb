class Vote < ActiveRecord::Base
    belongs_to :game, :counter_cache => true
end

