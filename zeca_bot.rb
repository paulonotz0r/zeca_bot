require 'telegram/bot'

token = ''

Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
        case message.text

            when '/oi'
                bot.api.send_message(chat_id: message.chat.id, text: "Vai tomar no cu, meo!")

            when '/meta'
                bot.api.send_message(chat_id: message.chat.id, text: "Tem que meter o louco!")

            when '/penis' 
                bot.api.send_message(chat_id: message.chat.id, text: "Tá querendo chupar um né viado")
       end
    end
end