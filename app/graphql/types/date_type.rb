Types::DateType = GraphQL::ScalarType.define do
  name 'Date'

  coerce_input -> (value, _ctx) { Date.parse(value) }
  coerce_result -> (value, _ctx) { value }
end
