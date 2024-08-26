class CreateRecord

  def self.call(record)
    new(record).process
  end

  attr_accessor :record
  def initialize(record)
    @record = record
  end

  def process
    result = {}
    ActiveRecord::Base.transaction do
      result = if record.save
        { success: true }
      else
        { success: false, object: record, errors: record.errors.full_messages }
      end
      raise ActiveRecord::Rollback if !result[:success]
    end
    result
  end
end