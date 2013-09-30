json.array!(@gadgets) do |gadget|
  json.extract! gadget, :name, :content
  json.url gadget_url(gadget, format: :json)
end
