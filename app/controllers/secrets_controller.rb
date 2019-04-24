require 'pry'
class SecretsController < ApplicationController
    before_action :require_login

    def show
        @secret = "Wag of the finger, Tip of the hat."
    end

    private

    def require_login
        redirect_to '/sessions/new' unless session.include? :name
    end
end
