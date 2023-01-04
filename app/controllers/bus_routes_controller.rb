class BusRoutesController < ApplicationController
      def index
        route=Route.all
        render json:route, status: :ok
      end    
      def show
        route=Route.find_by(id:params[:id])
        render json:route, status: :ok 
      end   
      def create
        route=Route.create(route_params)
        render json:route, status: :created
      end    
      def update
        route=Route.find_by(id:params[:id])
        route.update(Route_params)
        render json:route,status: :updated        
      end    
      def destroy
        route =Route.find_by(id: params[:id])
        route.destroy
        head :no_content
      end    
      private
      def route_params
        params.permit(:From_location, :To_location ,:Price)
      end
    
      def render_not_found_response
        render json: {error:"Event not found!"},status: :not_found
      end   
end
