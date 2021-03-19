module WelcomeHelper
    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def ambiente_rails
        if Rails.env.developent?
            "Desenvolcimento"
        elsif Rails.env.production?
            "Producao"
        else
            "Teste"
        end
    end
end
