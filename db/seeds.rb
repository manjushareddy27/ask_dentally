# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###### CREATE USER ######
User.create!(
email: "testuser1@example.com",
password: "testuser1",
password_confirmation: "testuser1",
)

User.create!(
email: "testuser2@example.com",
password: "testuser2",
password_confirmation: "testuser2",
)

User.create!(
email: "testuser3@example.com",
password: "testuser3",
password_confirmation: "testuser3",
)

User.create!(
email: "testuser4@example.com",
password: "testuser4",
password_confirmation: "testuser4",
)


###### QUESTIONS BY USER_ID: 1 ######
q1 = Question.create!(
  title: "How to create api-only rails app with normal rails new newapp?",
  user_id: 1
)

Answer.create!(
  body: 'Just pass —api or —minimal flag to rails new app command',
  user_id: 2,
  question_id: q1.id,
)

Answer.create!(
  body: 'By default, Rails is a full-stack application simply frontend + backend. When you are planning to develop a backend-only application, you can create it using –api flag.',
  user_id: 3,
  question_id: q1.id,
)

Answer.create!(
  body: 'The way your APIs are exposed will be the same for both the full-stack and API-only rails applications. So if you create a normal(full-stack) application, you can use it both ways.',
  user_id: 4,
  question_id: q1.id,
)

###### QUESTIONS BY USER_ID: 1 ######
q2 = Question.create!(
  title: "Command “webpack” not found",
  user_id: 1
)

Answer.create!(
  body: 'I remember I was fighting with this, but can not remember now how I resolved it. What is your build pack?',
  user_id: 2,
  question_id: q2.id,
)

Answer.create!(
  body: 'Try add a nodeJS buildpack (make sure it is above Ruby buildpack) in Heroku dashboard -> your app -> Settings -> Buildpack',
  user_id: 3,
  question_id: q2.id,
)

Answer.create!(
  body: 'Has anyone managed to solve this? I’m having a similar issue locally, yarn install is successful, but webpack is not found when starting rails server.',
  user_id: 4,
  question_id: q2.id,
)


###### QUESTIONS BY USER_ID: 2 ######
q3 = Question.create!(
title: "How about adding an option to re-run failed tests only",
user_id: 2
)

Answer.create!(
  body: "Personally I use the re-run failed tests features that is available within IntelliJ IDEA. I guess the feature may be useful for those who don’t have such a feature in their IDE.",
  user_id: 1,
  question_id: q3.id,
)

Answer.create!(
  body: "You’re correct in that the command rails test does not provide this option. However, many ruby test frameworks do provide this functionality directly (i.e. in rspec: rspec --only-failures).",
  user_id: 3,
  question_id: q3.id,
)

Answer.create!(
  body: "Hey Scott, thanks for your feedback!",
  user_id: 4,
  question_id: q3.id,
)

###### QUESTIONS BY USER_ID: 2 ######
Question.create!(
title: "How to configure an ActiveRecord connection?",
user_id: 2
)

Question.create!(
title: "Attr_readonly confusing behavior",
user_id: 2
)

Question.create!(
title: "What is the way to use n+1 query problem?",
user_id: 2
)

Question.create!(
title: "Convenience method to skip field validation when not changing the field",
user_id: 2
)


###### QUESTIONS BY USER_ID: 3 ######
q4 = Question.create!(
title: "Rails still encouraging us to use the asset pipeline for stylesheets and images?",
user_id: 3
)

Answer.create!(
  body: 'We successfully use webpacker for stylesheet compiling, but I’m not sure about images. I think you’re on the right track with using webpacker but I must admit that our initial adoption was a bit challenging.',
  user_id: 1,
  question_id: q4.id,
)

Answer.create!(
  body: 'There have been rumors or guesses that with Hotwire, Rails may go back to Sprockets.',
  user_id: 2,
  question_id: q4.id,
)

Answer.create!(
  body: "We’re still going strong on asset pipeline for css and images.",
  user_id: 4,
  question_id: q4.id,
)

Question.create!(
title: "We successfully use webpacker for stylesheet compiling, but I’m not sure about images. I think you’re on the right track with using webpacker but I must admit that our initial adoption was a bit challenging.",
user_id: 3
)

Question.create!(
title: "I use webpacker for styles, but I tried to upgrade to v6 beta and it did not go well. I’m not in the know, but it looked to me like webpacker is trying to focus more on JS specifically rather than all assets.",
user_id: 3
)


###### QUESTIONS BY USER_ID: 4 ######
q5 = Question.create!(
title: "A guide for Webpacker?",
user_id: 4
)

Answer.create!(
  body: "Hello Josh, I’m from the webpack side of the equation.",
  user_id: 1,
  question_id: q5.id,
)

Answer.create!(
  body: "Have there been any updates on this? A guide to implementing webpack in rails would be quite useful!",
  user_id: 2,
  question_id: q5.id,
)

Answer.create!(
  body: "Yes. My Partner makes it from the leftover roast lamb and it is really good",
  user_id: 3,
  question_id: q5.id,
)
