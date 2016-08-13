module MaximumRecord
  extend ActiveSupport::Concern

  included do
    before_save :check_no_of_records

    default_scope { order('created_at DESC') }
  end

  private

  def check_no_of_records
    self.class.first.destroy if self.class.count > 99
  end
end
