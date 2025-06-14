class SerializationService
  ADAPTER = SerializationAdapter

  def self.serialize(resource, serializer)
    ADAPTER.serialize(resource, serializer)
  end
end