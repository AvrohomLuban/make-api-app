# json.array! @companies.each do |company|
#   json.name company.name
#   json.buzzword company.buzzword
#   json.bs company.bs
# end

# json.array! @companies.each do |company|
#   json.partial! 'company.json.jbuilder', company: company
# end

json.array! @companies, partial: 'company', as: :company