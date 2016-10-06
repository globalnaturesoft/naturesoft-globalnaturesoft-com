module Naturesoft
  module GlobalnaturesoftCom
    class HomeController < Naturesoft::FrontendController
      def index
        @categories = Naturesoft::Projects::Category.all
        @projects = Naturesoft::Projects::Project.order(custom_order: "asc")
      end
    end
  end
end
