3.times do 
    board = Board.create(
      board_name: Faker::Movie.quote
    )
  3.times do 
    list = List.create(
      list_name: Faker::Music::RockBand.name,
      board_id: board.id
    )
    3.times do
        task = Task.create(
            task_name: Faker::Games::Pokemon.name,
            description: Faker::Games::Pokemon.move,
            priority: Faker::Number.number(5).to_i,
            list_id: list.id

        )
        end
    end
end

puts "27 records seeded";



