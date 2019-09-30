json.array! @practices, partial: "practices/practice", as: :practice
json.array!(@practices) do |practice|
  json.extract! practice, :id, :title, :about
  json.start practice.start
  json.end practice.end
  json.url practice_url(practice, format: :html)
end
