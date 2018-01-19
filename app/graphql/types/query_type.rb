Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :allCompanies, !types[Types::CompanyType] do
    resolve -> (obj, args, ctx) {
      Company.all
    }
  end

  field :getCompany do
    !type Types::CompanyType
    argument :id, !types.ID

    resolve -> (obj, args, ctx) {
      Company.find_by_slug_or_id(args[:id])
    }
  end

  field :getVentureCapitalist do
    !type Types::VentureCapitalistType
    argument :id, !types.ID

    resolve -> (obj, args, ctx) {
      VentureCapitalist.find_by_slug_or_id(args[:id])
    }
  end
end
