module Administrators
  class PostCategoryDecorator  < Draper::Decorator

    delegate_all
    decorates PostCategory

    def access_categores
      PostCategory.all.collect{|category| [category.name, category.id]} << ['Родитель', 0]
    end


  end
end