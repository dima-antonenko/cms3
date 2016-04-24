module Administrators
  class ProductCategoryDecorator  < Draper::Decorator

    delegate_all
    decorates ProductCategory

    def access_categores
      ProductCategory.all.collect{|category| [category.name, category.id]} << ['Родитель', 0]
    end


  end
end
