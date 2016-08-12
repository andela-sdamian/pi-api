module MaximumRecord
  extend ActiveSupport::Concern

  included do 
      before_save :check_no_of_records

      default_scope { order('created_at DESC') } 
  end  

  private

  def check_no_of_records
    Temperature.first.destroy if Temperature.all.size > 99
  end
end
