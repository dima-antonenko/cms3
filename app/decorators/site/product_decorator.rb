module Site
  class ProductDecorator < Draper::Decorator
    delegate_all
    decorates Product

    def new_back_call
      BackCall.new
    end

    def new_product_question
      ProductQuestion.new
    end

  end
end
