Quando('eu acesso o site') do
  visit '/treinamento/home'
end

Entao('verifico se acessei a pagina correta') do
  expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end