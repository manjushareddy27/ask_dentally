# ask_dentally
Build a website where you can ask questions and then reply to those questions with answers.

setup:
Navigate to directory where the script is located

```$ cd ~/ask_dentally```


Ensure gems installed by running

```bundle install```

Run migrations
```bundle exec bin/rails db:migrate```

To import test data please run below command(optional)
```bundle exec bin/rails db:seed```

Run rails server
```bin/rails server```

Open web application  && signup

```http://localhost:3000```

To view/post the questions please use below urls

```http://localhost:3000/questions/1``` or ```http://localhost:3000/questions/new```

Notes & Explanations:
* My approach was build a simple web application where user can sign up and create new questions and post answers for others questions.
* We could still improvise this code by adding extra features so user can browse all questions without changing question id in url.
* I definitely try to improvise this code if I get a chance to do.

Thank you for taking your time to review my code.
