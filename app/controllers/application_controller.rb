class ApplicationController < ActionController::Base
    before_action :set_locale
    http_basic_authenticate_with name: "syonet", password: "ase321klp098", only: :edit
    def set_locale
        if params[:locale]
        cookies[:locale] = params[:locale]
    end

    if cookies[:locale]
        if I18n.locale != cookies[:locale]
            I18n.locale = cookies[:locale]
        end
    end
    end
end

