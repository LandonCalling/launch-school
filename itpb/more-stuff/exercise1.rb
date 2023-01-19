words = [ "laboratory",
          "experiment",
          "Pans Labyrinth",
          "elaborate",
          "polar bear"
        ]

words.each do |string|
  if string =~ /(?i)lab/
    puts string
  end
end