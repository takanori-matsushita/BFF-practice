module Api
  module V1
    class StaticPagesController < ApplicationController
      def home
        render json: {title: "Home | Ruby on Rails Tutorial Sample App"}
      end
      
      def help
        render json: {title: "Help | Ruby on Rails Tutorial Sample App"}
      end

      def about
        render json: {title: "About | Ruby on Rails Tutorial Sample App"}
      end

      def contact
        render json: {title: "Contact | Ruby on Rails Tutorial Sample App"}
      end
    end
  end
end