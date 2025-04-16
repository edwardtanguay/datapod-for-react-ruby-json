module QStr
  # Generates a 6-character unique identifier (suuid) consisting of random
  # upper and lower case letters and numbers.
  # Example: "nO57aL"
  def self.generate_suuid
    characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    suuid = ""
    6.times do
      suuid << characters[rand(characters.length)]
    end
    suuid
  end
end