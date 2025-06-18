class PhoneFormatValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    ValueObjects::Phone.new(value)
  rescue ArgumentError => e
    record.errors.add(attribute, e.message)
  end
end
