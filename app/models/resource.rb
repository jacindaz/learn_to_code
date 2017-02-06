class Resource < ApplicationRecord
  validates :language, inclusion: { in: ["ruby", "python", "sql", "javascript", "java", "c", "clojure", "haskell", "elixir"] }
  validates :title, presence: true
  validates :url, presence: true
  validates :description, presence: true
  validates :free, inclusion: {in: [true, false]}
end
