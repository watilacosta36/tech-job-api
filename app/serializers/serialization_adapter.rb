class SerializationAdapter
  def self.serialize(resource, serializer)
    if resource.respond_to?(:each)
      Panko::ArraySerializer.new(resource, each_serializer: serializer).to_json
    else
      serializer.new.serialize_to_json(resource)
    end
  end
end
