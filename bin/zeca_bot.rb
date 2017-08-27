require 'telegram/bot'

token = '353888167:AAF7pTajsMdMZ-y7tsdl1tzbfERAHBCyAt8'

bruna = '<a href="tg://user?id=187889867">Bruna</a>'
matheuzinho = ' <a href="tg://user?id=305936221">Matheuzinho</a>'
ale = ' <a href="tg://user?id=231851541">Ale</a>'
duda = ' <a href="tg://user?id=215491130">Duda</a>'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
      when '/oi'
        bot.api.send_message(chat_id: message.chat.id, text: "Vai tomar no cu, meo!")

      when '/meta'
        bot.api.send_message(chat_id: message.chat.id, text: "Tem que meter o louco!")

      when '/penis'
        bot.api.send_message(chat_id: message.chat.id, text: "Tá querendo chupar um né viado")

      when '/lucifer'
        bot.api.send_contact(chat_id: message.chat.id, phone_number: "666666666", first_name: "Lucifer", last_name: "Da Silva")

      when '/viado'
        bot.api.send_message(chat_id: message.chat.id, text: "E aí #{message.from.first_name}, beleza?")

     # when '/all'
       # bot.api.send_message(chat_id: message.chat.id, parse_mode: "HTML", text: bruna + matheuzinho + ale + duda)

      when '/signo'
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name}, meu signo é **VAI TOMAR NO CU FILHO DA PUTA EU SOU UM FODENDO CACHORRO E VOCÊ QUER ME DAR SIGNO SEU ARROMBADO**")

      when '/start'
        question = 'London is a capital of which country?'
        # See more: https://core.telegram.org/bots/api#replykeyboardmarkup
         answers =
             Telegram::Bot::Types::ReplyKeyboardMarkup
             .new(keyboard: [%w(Teste1 Teste2), %w(Teste3 Teste4)], one_time_keyboard: true)
                bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)

      when '/stop'
         # See more: https://core.telegram.org/bots/api#replykeyboardremove
        kb = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
            bot.api.send_message(chat_id: message.chat.id, text: 'Sorry to see you go :(', reply_markup: kb)
     end

  end
end