json.id product.id
json.name product.name
json.price product.price
json.images product.images
json.description product.description 
json.discount? product.is_discounted?
json.tax product.tax
json.total product.total
json.supplier product.supplier.name
json.current_user current_user
json.category product.categories

json.formatted do
  json.price number_to_currency(product.price)
  json.tax number_to_currency(product.tax)
  json.total number_to_currency(product.total)
end