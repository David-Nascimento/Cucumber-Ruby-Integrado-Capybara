Dado("que temos os seguintes restaurantes") do |table|
    @restaurants_data = table.hashes
end

Quando("acesso a lista de Restaurantes") do
    visit '/restaurants'
end

Entao("deve ver todos os restaurantes") do
    restaurants = all('.restaurant-item')

    @restaurants_data.each_with_index do |value, index|
        expect(restaurants[index]).to have_text value['nome'].upcase
        expect(restaurants[index]).to have_text value['categoria']
        expect(restaurants[index]).to have_text value['entrega']
        expect(restaurants[index]).to have_text value['avaliacao']
    end
end