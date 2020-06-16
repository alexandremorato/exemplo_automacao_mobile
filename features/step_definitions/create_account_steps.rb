Dado("que estou na tela de criação de conta") do
    tutorial.btn_skip
    create_accounts.click_btn_i_am_new
end

Dado("que estou na tela inicial do app") do
end
  
Quando("finalizar o tour pelo tutorial") do
    for i in 0..2
     tutorial.btn_next
    end
    tutorial.btn_done
    create_accounts.click_btn_i_am_new
end
  
Quando("preencher o formulário de cadastro") do
    data = create_mass_data
    create_accounts.create_account(data)
end

Quando("informar o token enviado para o celular cadastrado") do
    for i in 0..3
        create_accounts.fill_token
    end
    create_accounts.click_btn_submit_code
end

Quando("preencher o formulário de cadastro com os seguintes dados:") do |table|
    data = table.rows_hash
    create_accounts.create_account(data)
end

Então("deve ser apresentado a área logada") do
    expect(categories_popular.get_title_categories).to eql 'Categories'
    expect(categories_popular.get_title_popular).to eql 'Popular'
end