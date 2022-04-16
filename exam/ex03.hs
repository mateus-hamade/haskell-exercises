-- capitalize :: String -> String

-- que converte para maiúsculo o primeiro caractere de cada palavra que forma a
-- lista de entrada. Caso uma palavra não inicie com um caractere alfabético, este
-- deve ser deixado sem modificação. Sua função deve atender os seguintes casos
-- de teste:

-- capitalize "aba teste dado" == "Aba Teste Dado"
-- capitalize "123 caderno ?kk" == "123 Caderno ?kk"
-- capitalize "" == ""

-- Para essa questão, você poderá considerar útil usar as seguintes funções definidas
-- na biblioteca padrão de Haskell:

-- • words :: String -> [String]: divide uma string de entrada nas
-- palavras que a constituem. Exemplo:
-- words "aba teste dado" == ["aba", "teste", "dado"]

-- • isLetter :: Char -> Bool: retorna verdadeiro se o caractere fornecido
-- como entrada for uma letra. Exemplos:
-- isLetter 'a' == True
-- isLetter '1' == False
-- isLetter '!' == False
import Data.Char

capitalize :: String -> [String]
capitalize [] = []
capitalize xs = __

-- a => ['aba', 'teste', 'dado']
-- a => [[aba], [teste], [dado]]