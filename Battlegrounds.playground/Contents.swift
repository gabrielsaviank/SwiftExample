//BATTLE GROUNDS
//Uma pequena demonstração da linguagem Swift Aplicada com Tuples, funções, Arrays entre outros... 
typealias Attack = (name: String, damage: Int)
// Funcões sao essenciais para a criação de tarefas que possam ser reutilizadas
func attackEnemy(damage: Int){
    print("Inimigo foi atingido, seu dano foi de \(damage)")
}
func attackEnemy(attack: Attack) -> String{
    return "Você atacou com \(attack.name) \n o dano no inimigo foi de \(attack.damage) \n "
}
// Variaveis é onde guarda-se dados para que nosso programa possa manipular.
attackEnemy(damage: 90)
var message = attackEnemy(attack: ("Golpe de Machado", 55))
// TypeAlias possibilita que voce crie um novo nome para um tipo de dado existente, após esse recurso ser usado ele pode ser usado novamente ao invés da funçao anterior
typealias AttackClosure = ([Attack]) -> Void
// O Let ajuda voce a criar uma coleção de caracteres que são imutáveis diferentemente das strings
let playerActions = [("Bomba de Gelo", 45), ("Olho do Guerreiro", 15), ("Mãos de Fúria", 5)]

func fetchPlayerAttack(closure: AttackClosure){
    closure(playerActions)
}
// Statements neste caso foi utilizado o Statement in e for, que significa todos items devem ser executados pelo menos uma vez.
fetchPlayerAttack{(attackOptions) in
    for (name, damage) in attackOptions{
        print("\(name) vai ter um dano de \(damage) se for utilizada")
    }
}
