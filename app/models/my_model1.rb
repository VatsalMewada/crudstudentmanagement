class MyModel1 < ApplicationRecord
    belongs_to :info

    after_destroy :log_destroy_action
 
  def log_destroy_action
    puts '2nd model destroyed===========>>'
  end

end
