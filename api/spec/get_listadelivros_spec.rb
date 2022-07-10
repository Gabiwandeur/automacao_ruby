require "httparty"

describe "GET /lista de livros" do
  
    it "recuperando lista de livros" do
    
        payload = {}

    resultado = HTTParty.get(
        "https://simple-books-api.glitch.me/books",
        body: payload.to_json,
        header: {
            "Content-Type": "aplication/json",
        },
    )

    expect(resultado.code).to eq 200
    puts resultado.parsed_response
    end
end

