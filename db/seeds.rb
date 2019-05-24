3.times do 
    board = Board.create(
      board_name: Faker::Movie.quote
    )
  3.times do 
    list = List.create(
      list_name: Faker::Food.dish,
      board_id: board.id
    )
    3.times do
        task=Task.create(
            task_name: Faker::Food.ingredient,
            description: Faker::Creature::Animal.name,
            priority: Faker::Number.number(5).to_i,
            list_id: list.id

        )
        end
    end
end

puts "27 records seeded";



