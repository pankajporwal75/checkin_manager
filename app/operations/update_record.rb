class UpdateRecord

  def self.call(record, params)
    new(record, params).process
  end

  attr_accessor :record, :params
  def initialize(record, params)
    @record = record
    @params = params
  end

  def process
    result = {}
    ActiveRecord::Base.transaction do
      result = if record.update(params)
        { success: true }
      else
        { success: false, object: record, errors: record.errors.full_messages }
      end
      raise ActiveRecord::Rollback if !result[:success]
    end
    result
  end
end