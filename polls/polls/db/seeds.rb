# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_names = ["bergieboy", "kevin", "cynthia", "alex", "carolyn", "rose", "jeff"]

user_names.each{ |username| User.create(username: username) }

Poll.create(title: 'Ruby Poll', author_id: User.first.id)
Poll.create(title: 'Rails Poll', author_id: User.all[1].id)
Poll.create(title: 'Food', author_id: User.all[2].id)
Poll.create(title: 'Homework', author_id: User.all[4].id)


Question.create(question_body: 'Which food item do you like more?', poll_id: Poll.all[2].id)
Question.create(question_body: 'Do you like cheese?', poll_id: Poll.all[2].id)
Question.create(question_body: 'Are there any textures that freak you out?', poll_id: Poll.all[2].id)

AnswerChoice.create(answer_body: 'Korean BBQ', question_id: Question.all[0].id)
AnswerChoice.create(answer_body: 'Impossible Burger', question_id: Question.all[0].id)
AnswerChoice.create(answer_body: 'French Fries', question_id: Question.all[0].id)
AnswerChoice.create(answer_body: 'Tacos', question_id: Question.all[0].id)
