puts 'Gerando lamps...'

5.times do |i|
  Lamp.create(
    lamp_model: ["led", "mercurio"].sample ,
    description: ["tipo 1","tipo2"].sample
    )
end

puts 'lamps gerados com sucesso!'
