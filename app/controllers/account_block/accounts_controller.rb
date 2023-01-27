module AccountBlock
    class  AccountsController < ApplicationController
        def index
            account = AccountBlock::Account.all
            render json: account
        end

        def show
          account = AccountBlock::Account.find(params[:id])
          render json: account
        end

        def destroy
          account = AccountBlock::Account.find(params[:id])
          account.destroy
          render json: {message: 'OK'}
        end

        def create
          account = AccountBlock::Account.new(user_params)
          account.save
          render json: account
        end

        def update
          account = AccountBlock::Account.find(params[:id])
          account.update(user_params)
          render json: {message: 'OK'}
        end

        private 
        def user_params
         params.permit(:name, :email, :password)
        end
        
  end
end