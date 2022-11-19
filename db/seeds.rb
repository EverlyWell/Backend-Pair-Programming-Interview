products = Product.create([{ name: 'T-Shirt' }, { name: 'Pants' }, { name: 'Shoes' }])
products.each do |product|
  product.questions.create(label: 'What size is it?', answer: 'Medium')
end
