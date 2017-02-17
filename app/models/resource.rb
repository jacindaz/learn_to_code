class Resource < ApplicationRecord
  LANGUAGES = ["ruby", "python", "sql", "javascript", "java", "c", "clojure", "haskell", "scala", "elixir", "go", "c", "c++"]
  TECHNOLOGIES = ["django", "rails", "spring", "phoenix", "react", "angular", "backbone", "ember", "sinatra", "aws"]

  validates :language, inclusion: { in: LANGUAGES }
  validates :tech, inclusion: { in: TECHNOLOGIES }, allow_nil: true
  validates :title, presence: true
  validates :url, presence: true
  validates :description, presence: true
  validates :free, inclusion: {in: [true, false]}
end
