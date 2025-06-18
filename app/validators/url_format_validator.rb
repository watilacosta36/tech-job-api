class UrlFormatValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    ValueObjects::Url.new(value)
  rescue ArgumentError => e
    record.errors.add(attribute, e.message)
  end
end

