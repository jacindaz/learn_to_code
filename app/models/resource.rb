class Resource < ApplicationRecord
  validates :language, inclusion: { in: ["ruby", "python", "sql", "javascript", "java", "c", "clojure", "haskell", "elixir"] }
end
