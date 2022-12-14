# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

spinner = TTY::Spinner.new("[:spinner] #{"Cadastrando Moedas..."}", format: :pulse_2)
spinner.auto_spin

coins = [
    { 
        description: "Bitcoin",
        acronym: "BTC",
        url_image: "https://imagensemoldes.com.br/wp-content/uploads/2020/09/Imagem-Dinheiro-Bitcoin-PNG.png" },
    {
        description: "Ethereum",
        acronym: "ETC",
        url_image: "https://upload.wikimedia.org/wikipedia/commons/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png" },
    { 
        description: "Totodyle",
        acronym: "TOT",
        url_image: "https://i.pinimg.com/originals/d7/05/0a/d7050a501fc89b9a06dc9bb194d5d797.png" }
    ]

coins.each do |coin|
    Coin.find_or_create_by!(coin)   
end

spinner.stop("(#{"Concluído!"})")