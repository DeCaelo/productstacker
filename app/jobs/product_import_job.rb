class ProductImportJob < ApplicationJob
  queue_as :default

  def perform(link, stack_id)
    stack = Stack.find(stack_id)
    imported_product = nil
    # check if the product already exists based on the link
    existing_product = Product.find_by(link: link)

    if existing_product
      imported_product = existing_product.stacks << stack
    else
      # If the product doesn't exist, create a new one
      product = Product.new(link: link)
      product.stacks << stack
      imported_product = ProductParser::Amazon.save_to_product(link, product)
    end
  end
end
