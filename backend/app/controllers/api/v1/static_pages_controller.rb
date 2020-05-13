module Api
  module V1
    class StaticPagesController < ApplicationController

      def home
        title = full_title()
        render json: {title: title}
      end
      
      def help
        title = full_title("Help")
        render json: {title: title}
      end

      def about
        title = full_title("About")
        render json: {title: title}
      end

      def contact
        title = full_title("Contact")
        render json: {title: title}
      end

    end
  end
end