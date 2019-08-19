# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


tella = User.create(name:"Tella", username:"t3llaBoo" );

peanut = User.create(name:"Peanut", username:"peanutMonster")





cuddles = Collection.create(title:"Cuddles", date:Date.parse('2019-07-21', '%d-%m-%Y'))
recipes = Collection.create(title:"Food", date:Date.parse('2019-08-01', '%d-%m-%Y'))
toys = Collection.create(title:"Toys", date:Date.parse('2019-08-06', '%d-%m-%Y'))



cuddleAppt = Event.create(title:"Cuddle Time", status:"closed", duration:"30m", hour:"12pm", datetime:DateTime.parse("2019-08-01 12:00","%m/%d/%Y %H:%M"), collection_id:1, user_id:1, item_type: "events")
dinner = Event.create(title:"Dinner Time", status:"open", duration:"5m", hour:"8pm", datetime:DateTime.parse("2019-08-02 20:00","%m/%d/%Y %H:%M"), user_id:2, item_type: "events")
playtime = Event.create(title:"Play Time", status:"open", duration:"5m", hour:"9pm", datetime:DateTime.parse("2019-08-03 21:00","%m/%d/%Y %H:%M"), user_id:2, item_type: "events")



noKitchen = Habit.create(title:"No Kitchen Time", length:30, user_id:2)


iLikeFood = Note.create(content: "I really love food food is so good food good so good food food i love food is good food", date:Date.parse('2019-08-01', '%d-%m-%Y'), user_id: 2, collection_id: 2, item_type: "notes")
iLoveFood = Note.create(content: "I really LOVE food food is so GOOD food AMAZING so AMAZING food food i love food is AMAZING food", date:Date.parse('2019-08-02', '%d-%m-%Y'), user_id: 2, item_type: "notes", collection_id: nil)
iLoveCuddles = Note.create(content: "I want cuddles all the time. Look at my soulful puppy eyes and cuddle me for life.", date:Date.parse('2019-08-03', '%d-%m-%Y'), user_id: 1, item_type: "notes", collection_id: nil)



eatbreakf = Task.create(title:"Eat all the breakfast", important:false, status:"closed", date:Date.parse('2019-08-01', '%d-%m-%Y'), user_id:2, item_type: "tasks", collection_id: 2)
eatlunch = Task.create(title:"Eat all the lunch", important:true, status:"open", date:Date.parse('2019-08-02', '%d-%m-%Y'), user_id:2, item_type: "tasks", collection_id: nil)
eatdinner = Task.create(title:"Eat all the dinner", important:true, status:"open", date:Date.parse('2019-08-03', '%d-%m-%Y'), user_id:2, item_type: "tasks", collection_id: nil)
