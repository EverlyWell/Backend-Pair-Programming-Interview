# Products without questions
Product.create([{ name: "Women's Health" }, { name: 'Metabolism Test' }])

# General questions
Question.create(
  label: 'When do I get results?',
  answer: 'Results are returned 1-3 days after the lab receives your test sample.'
)
Question.create(
  label: 'What guidance will I get with my results?',
  answer: 'You will get tailored suggestions on what to do next.'
)

# Food Sensitivity Test
product = Product.create(name: 'Food Sensitivity Comprehensive Test')
product.questions.create(
  label: 'How does this test work?',
  answer: 'This test measures how reactive your IgG antibodies are to 204 common foods.'
)
