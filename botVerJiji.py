import telebot
from telebot import types

api = '5178114629:AAEAYhJz1XRZSjiXfmJIP_AFFNdC6c1nwUQ'
bot = telebot.TeleBot(api)

@bot.message_handler(commands=['start'])
def send_welcome(message):
 chat_id = message.chat.id

 custom = types.ReplyKeyboardMarkup()
 a = types.KeyboardButton('Ya')
 b = types.KeyboardButton('Tidak')

 custom.row(a)
 custom.row(b)

 msg = bot.send_message(chat_id,'Halo, apakah anda mengalami demam ?', reply_markup=custom)

 bot.register_next_step_handler(msg,send_welcome)

def step1(message):
 chat_id = message.chat.id
 print(chat_id)
 custom = types.ReplyKeyboardRemove()
 bot.send_message(chat_id,'okei, ketik /lanjut',reply_markup=custom)

def send_welcome(message):
 chat_id = message.chat.id

 custom = types.ReplyKeyboardMarkup()
 a = types.KeyboardButton('Ya')
 b = types.KeyboardButton('Tidak')

 custom.row(a)
 custom.row(b)

 msg = bot.send_message(chat_id,'Apakah anda flu?', reply_markup=custom)

 bot.register_next_step_handler(msg,step2)

def step2(message):
 chat_id = message.chat.id
 custom = types.ReplyKeyboardMarkup()
 a = types.KeyboardButton('Ya')
 b = types.KeyboardButton('Tidak')

 custom.row(a)
 custom.row(b)

 msg = bot.send_message(chat_id,'Apakah anda mengalami nyeri tenggorokan ?', reply_markup=custom)

bot.polling()