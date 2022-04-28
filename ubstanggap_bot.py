import telebot
from telebot.types import InlineKeyboardMarkup, InlineKeyboardButton
from telebot import types

api = '5178114629:AAEAYhJz1XRZSjiXfmJIP_AFFNdC6c1nwUQ'
bot = telebot.TeleBot(api)

@bot.message_handler(commands=['start'])
def send_welcome(message):
 chat_id = message.chat.id
 markup = types.InlineKeyboardMarkup()
 markup.width = 2
 markup.add(
     InlineKeyboardButton("Ya", callback_data="1"),
     InlineKeyboardButton("Tidak", callback_data="2"),
 )
 msg = bot.send_message(chat_id,'Apakah anda mengalami demam ?', reply_markup=markup)
#  bot.edit_message_reply_markup(chat_id=chat_id,message_id=message.message_id)
 bot.register_next_step_handler(msg,quest2)

def quest2(message):
 chat_id = message.chat.id
 custom = types.ReplyKeyboardMarkup()
 a = types.KeyboardButton('Ya2')
 b = types.KeyboardButton('Tidak')
 custom.row(a)
 custom.row(b)
 msg = bot.send_message(chat_id,'Apakah anda mengalami batuk?', reply_markup=custom)
 bot.register_next_step_handler(msg,quest3)

def quest3(message):
 chat_id = message.chat.id
 custom = types.ReplyKeyboardMarkup()
 a = types.KeyboardButton('Ya3')
 b = types.KeyboardButton('Tidak')
 custom.row(a)
 custom.row(b)
 msg = bot.send_message(chat_id,'Apakah anda mengalami pilek ?', reply_markup=custom)
 bot.register_next_step_handler(msg,quest4)

def quest4(message):
 chat_id = message.chat.id
 custom = types.ReplyKeyboardMarkup()
 a = types.KeyboardButton('Ya4')
 b = types.KeyboardButton('Tidak')
 custom.row(a)
 custom.row(b)
 msg = bot.send_message(chat_id,'Apakah anda mengalami nyeri tenggorokan ?', reply_markup=custom)
 bot.register_next_step_handler(msg,quest5)

def quest5(message):
 chat_id = message.chat.id
 custom = types.ReplyKeyboardMarkup()
 a = types.KeyboardButton('Ya5')
 b = types.KeyboardButton('Tidak')
 custom.row(a)
 custom.row(b)
 msg = bot.send_message(chat_id,'Apakah anda mengalami, letih dan lesu?', reply_markup=custom)
 bot.register_next_step_handler(msg,quest6)

def quest6(message):
 chat_id = message.chat.id
 custom = types.ReplyKeyboardMarkup()
 a = types.KeyboardButton('Ya3')
 b = types.KeyboardButton('Tidak')
 custom.row(a)
 custom.row(b)
 custom = types.ReplyKeyboardRemove()
 msg = bot.send_message(chat_id,'Terima kasih', reply_markup=custom) 
#  bot.register_next_step_handler(msg,quest4)

@bot.callback_query_handler(func=lambda message: True)
def callback_query(call):
    if call.data == "1":
        bot.answer_callback_query(call.id, "w")
        

bot.polling()


# @bot.message_handler(func=lambda message: True)
# def echo_all(message):
#     m = message
#     if m.text == "tes":
#         bot.send_message(m.chat.id , "as")

