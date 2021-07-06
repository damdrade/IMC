class ImcController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :require_jwt

    def require_jwt
        token = JWT.encode({imc: imc_params}, Rails.application.secrets.secret_key_base, 'HS256')
        if !token
            head :forbidden
        end
        if !valid_token(token)
            head :forbidden
        end
    end

    def index
        @imc = Imc.all
    end

    def create
        @imc = Imc.new(imc_params)

        @imc.imc = @imc.weight/(@imc.height**2)
        @imc.imc = @imc.imc.round(1)

        case @imc.imc
        when 0..18.5
            classification = ["Magreza", "0"]
        when 18.5..24.9
            classification = ["Normal", "0"]
        when 25..29.9
            classification = ["Sobrepeso", "I"]
        when 30..39.9
            classification = ["Obesidade", "II"]
        else
            classification = ["Obesidade", "III"]
        end

        @imc.classification = classification[0]
        @imc.obesity = classification[1]

        respond_to do |format|
            if @imc.save
                format.json {render json: @imc.to_json(only: [:imc, :classification, :obesity]), status: :created, location: @imc}
            else
                format.json {render json: @imc.errors, status: :unprocessable_entity}
            end
        end
    end

    private

    def valid_token(token)
        unless token
            return false
        end

        begin
            decoded_token = JWT.decode token, Rails.application.secrets.secret_key_base, 'HS256'
            return true
        rescue JWT::DecodeError
            Rails.logger.warn "Error decoding the JWT: "+ e.to_s
        end
        false
    end

    def imc_params
        params.require(:imc).permit(:height, :weight)
    end
end