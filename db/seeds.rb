puts 'Gerando dogs...'

5.times do |i|
  Dog.create(
    breed: ["dalmata", "pastor alemão", "chitzu"].sample ,
    size: "tamanho padrão da raça"
    )
end

puts 'dogs gerados com sucesso!'