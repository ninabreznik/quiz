class SeedQuestions < ActiveRecord::Migration
  def up
    Question.create body: "Do you want to build the next Social Network for Cats?", category: "cat"
    Question.create body: "Do you think dogs should be allowed everywhere people are?", category: "dog"
    Question.create body: "Your middle name is “Meow”?", category: "cat"
    Question.create body: "Is Snoop Dog one of your favourite artists?", category: "dog"
    Question.create body: "Do you spend all day watching cat videows?", category: "cat"
    Question.create body: "Do you stop people in the street to pet their dogs?", category: "dog"
  end

  def down
    Question.destroy_all
  end
end
