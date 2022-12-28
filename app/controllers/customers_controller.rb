class CustomersController < ApplicationController
        def index
         customer=Customer.all
         render json: customer
        end        
        # GET /customer/{}
        def show
        customer = Customer.find_by(id: params[:id])
        
        if customer
        render json: customer, status: :created
        else
        render json: {error: "Not authorized"}.to_json, status: :unauthorized
        end
        end        
        # POST /customers
        def create 
        customer = Customer.create(customer_params)
        if customer.valid?
         session[:customer_id] = customer.id
         render json: customer, status: :created
        else
         render json: {errors: customer.errors.full_messages}.to_json, status: :unprocessable_entity
        end
        
        end        
        private 
        
        def customer_params
        params.permit(
         :name, :email, :password
        )
        end
end
