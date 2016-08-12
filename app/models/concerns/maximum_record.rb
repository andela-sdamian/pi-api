module MaximumRecord
  extend ActiveSupport::Concern

  included { before_save :check_no_of_records }

  private

  def check_no_of_records
    Temperature.first.destroy if Temperature.all.size > 99
  end
end
