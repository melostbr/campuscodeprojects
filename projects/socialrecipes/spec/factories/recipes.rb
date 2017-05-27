FactoryGirl.define do
  sequence(:name) { |n| "Torta de limão#{n}" }
  factory :recipe do
    name
    world_cuisine
    food_type
    food_preference
    people 6
    preparation_time 60
    dificulty 'Fácil'
    ingredients 'Massa:
                 2 gemas,
                 4 colheres (sopa) adoçante para forno,
                 4 colheres (sopa) de margarina light,
                 10 colheres (sopa) farinha de trigo integral
                 ou farinha de aveia,
                 1 colher (sopa) fermento,
                 Recheio:
                 2 receitas de leite condensado diet*,
                 Meio copo de suco de limão
                 Cobertura:
                 2 claras em neve
                 2 colheres de (sopa) de adoçante para forno
                 *Leite condensado diet:
                 1 xícara (chá) leite em pó
                 1 xícara (sobremesa) margarina light
                 Meia colher (sopa) adoçante para forno
                 Meia xícara (chá) de água fervida'
    steps        'Massa:
                 Misture os ingredientes até formar uma massa lisa
                 Abra a massa em um refratário untado com margarina
                 Fure a massa com a ajuda de um garfo e leve ao forno para
                 dourar por cinco minutos
                 Retire do forno e reserve
                 Recheio:
                 Misture o leite condensado diet com o suco de limão e coloque
                 sobre a massa
                 Cobertura:
                 Bata as claras em neve junto com o adoçante e coloque
                 sobre o recheio
                 Leve ao forno novamente para dourar
                 Leite condensado diet:
                 Bata todos os ingredientes no liquidificador, por 5 minutos,
                 em potência máxima
                 Deixe esfriar'
    photo do
      File.new(Rails.root.join('app', 'assets', 'images', 'torta_limao.jpg'))
    end
  end
end
