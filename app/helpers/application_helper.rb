module ApplicationHelper
    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def url_icone
        "https://thumbs.dreamstime.com/z/%C3%ADcone-do-sinal-do-usu%C3%A1rio-s%C3%ADmbolo-da-pessoa-avatar-humano-84519083.jpg"
    end

    def locale(locale)
        if I18n.locale == :en 
        "This software is in english "
        else
        "O software está em Portugues do Brasil"
        end  
        # def locale
        #   I18n.locale == :en ? "This software is in english" : "O Programa está em Portugues do Brasil"
    end

    def teste_url
            image_tag'https://thumbs.dreamstime.com/z/%C3%ADcone-do-sinal-do-usu%C3%A1rio-s%C3%ADmbolo-da-pessoa-avatar-humano-84519083.jpg',size: "25x25"
    end

    def nome_empresa
        "Syonet"
    end
    def logo_empresa    
        image_tag 'https://chat.leadforce.com.br/assets/chat-30019e7e0949411216b43396411a8bf7/Atendente.jpg?0.8790852285455912',size: "150x150",class:"rounded mx-auto d-block"
    end

    def rails_ambiente
        if Rails.env.teste?
            "Ambiente de teste"
        elsif Rails.env.production?
            "Ambiente de producao"
        else 
            "Ambiente de desenvolvimento"
            
        end
        end
end