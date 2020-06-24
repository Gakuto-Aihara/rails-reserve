json.array! @infomations, partial: "infomations/infomation", as: :infomation
json.array!(@infomations) do |infomation|
  json.extract! infomation, :id, :info, :about
  json.start infomation.start
  json.end infomation.end
  json.url infomation_url(infomation, format: :html)
end
