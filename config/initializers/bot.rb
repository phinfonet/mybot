#Encoding: UTF-8
bot = Cinch::Bot.new do
 configure do |c|
     c.server = "irc.freenode.org"
      c.channels = ["#web-devs-br", "#haskell-br", "#olarila"]
      c.nick = "webdevsbr"
  end
 
  on :message, "oi" do |m|
    m.reply "Olá, #{m.user.nick}"
  end

  on :message, "webdevsbr" do |m|
      m.reply "Olá, bem vindo ao #web-devs-br, eu sou um robo muito inutil demorei horas pra ser desenvolvido, em que posso ajudar?"
      m.reply "se precisar, digite ? help, resultado? hehe, agora vou funcionar!"
  end
  
  on :message, '? help' do |m|
      Command.all.each do |cmd|
        m.reply "? " + cmd.name + " " + cmd.value
      end
  end

  Command.all.each do |cmd|
    on :message, '? ' + cmd.name do |m|
      m.reply cmd.value
    end
  end
  on :message, 'bot-build' do |m|
    m.reply "Bot WebDevsBr - build 0.5"
    m.reply "Built with Rails, Cinch, MongoID and Twitter Bootstrap"
    m.reply "running with Unicorn Server"
    m.reply "Created by Pedro Henrique (phinfonet)"
  end
end
bot.start
