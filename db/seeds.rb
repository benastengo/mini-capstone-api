Product.create!([
  {name: "Gallbladder", price: "0.0", description: "the small sac-shaped organ beneath the liver, in which bile is stored after secretion by the liver and before release into the intestine.", quantity: 10},
  {name: "Toe", price: "10.0", description: "Like a finger, but on your foot", quantity: 10},
  {name: "Brain", price: "130000.0", description: "an organ of soft nervous tissue contained in the skull of vertebrates, functioning as the coordinating center of sensation and intellectual and nervous activity.", quantity: 10},
  {name: "Heart", price: "130.0", description: "A hollow muscular organ that pumps the blood through the circulatory system by rhythmic contraction and dilation. In vertebrates there may be up to four chambers (as in humans), with two atria and two ventricles.", quantity: 10},
  {name: "Liver", price: "50", description: "A large lobed glandular organ in the abdomen of vertebrates, involved in many metabolic processes.", quantity: 10, supplier_id: 1 }
])

Image.create!([
  {url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Chimp_Brain_in_a_jar.jpg/1200px-Chimp_Brain_in_a_jar.jpg", product_id: 2},
  {url: "http://cdn.shopify.com/s/files/1/0870/8326/products/MG_4213_1200x1200.jpg?v=1547769354", product_id: 1},
  {url: "https://cdn11.bigcommerce.com/s-8y4uj/images/stencil/500x659/products/872/8698/il_fullxfull.547631445_lkbq__17952.1531600165.jpg?c=2", product_id: 4},
  {url: "https://i2-prod.mirror.co.uk/incoming/article12335575.ece/ALTERNATES/s615b/PAY-ILL-TOE-AST-TO-THAT-EX-MARINE-TO-DONATE-THREE-ROTTEN-TOES-TO-FAMOUS-COCKTAIL-BAR-AFTER-THEY-FROZE-D.jpg", product_id: 7},
])