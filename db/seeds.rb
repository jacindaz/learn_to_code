# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

resources = [
  {
    url: "https://pragprog.com/titles/ltp2/learn-to-program-2nd-edition",
    language: "ruby",
    framework: nil,
    free: false,
    description: "This is a great resource if you are starting from ground zero, and want to learn to code. This book only covers Ruby, and doesn't talk about Rails or any concepts related to web development."
  },
  {
    url: "https://www.codecademy.com/learn/ruby",
    language: "ruby",
    framework: nil,
    free: true,
    description: "This is a great resource if reading books are harder for you to consume. Codecademy provides a combination of teaching a concept, plus short, interactive practice problems. It's a great place to start, but gives you less depth in your learning than other resources."
  },
  {
    url: "https://rubymonk.com/",
    language: "ruby",
    framework: nil,
    free: true,
    description: "Ruby Monk is a great balance of teaching concepts, but also providing examples. There aren't practice problems, but they do provide the ability for you to run examples, which is useful for experimenting."
  },
  {
    url: "https://www.edx.org/course/introduction-computer-science-mitx-6-00-1x-9",
    language: "python",
    framework: nil,
    free: true,
    description: "This is an awesome introduction to computer science, using python. It is the MIT intro to computer science course, and will give you a deep-dive into computer science. Note that if you do not have any prior experience, this course will be very time consuming. When trying to get the best grade possible, I spent on average 20 hours per week when I took this course without any prior experience. If you are able to commit the time, you will learn so much! It is so worth it."
  },
]

resources.each do |r|
  Resource.create!(
    url: r[:url],
    language: r[:language],
    framework: r[:framework],
    free: r[:free],
    description: r[:description],
  )
end
