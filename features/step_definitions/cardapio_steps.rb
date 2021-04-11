Dado('que eu acesso o sistema') do
   visit '/restaurants'
end

Quando('eu acesso o restaurante {string}') do |restaurante|
    find(".restaurant-item", text: restaurante.upcase).click    
end

Entao('vejo os seguintes items disponiveis no cardapio:') do |table|
    items = all('.menu-item-info-box')

    product_data = table.hashes
    
    product_data.each_with_index do |value, index|
        expect(items[index]).to have_text value['produto'].upcase
        expect(items[index]).to have_text value['descricao']
        expect(items[index]).to have_text value['preco']
    end

end
