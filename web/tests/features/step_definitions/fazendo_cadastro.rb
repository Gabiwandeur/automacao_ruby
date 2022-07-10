Dado('que eu acesso o site de cadastro') do
   visit '/users/new'
end
Quando('eu submeto o cadastro') do
   find('#user_name').set('Gabriella')
   find('#user_lastname').set('Wandeur')
   find('#user_email').set('gabi@gmail.com')
   find('input[value="Criar"]').click
   sleep 10 
end
  
Entao('verifico se fui cadastrado') do
   texto = find('#notice')
   expect(texto.text).to eql 'Usuario Criado com sucesso'
end