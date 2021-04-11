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

Quando('acesso a lista de restaurantes') do
    visit '/restaurants'
end

Entao('cada restaurante deve ter {int} {string} {string} {string} {float}') do |id, name, category, delivery_time, rating|
    restaurants = all('.restaurant-item')
    
    expect([restaurants[id]]).to have_text name
    expect([restaurants[id]]).to have_text category
    expect([restaurants[id]]).to have_text delivery_time
    expect([restaurants[id]]).to have_text rating
end