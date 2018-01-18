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
      Company.find(args[:id])
    }
  end
end
