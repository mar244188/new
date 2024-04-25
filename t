


import telebot

# Replace 'YOUR_TOKEN' with your Telegram bot token
bot = telebot.TeleBot('6893609851:AAGXA2olrm5Q0blxXbjHuyq2NH8eK1Xe7wc')

@bot.message_handler(commands=['start'])
def send_welcome(message):
    bot.reply_to(message, "مرحباً! أهلاً بك في بوت التليجرام البسيط.")

@bot.message_handler(func=lambda message: True)
def echo_all(message):
    bot.reply_to(message, message.text)

# Start the bot
bot.polling()
