-- data Task = Task String Int
-- data Project = Project [Task]

-- O tipo Task representa tarefas formadas por uma descrição (valor de tipo String)
-- e o tempo de duração de uma tarefa (valor de tipo Int). Por sua vez, o tipo
-- Project denota um projeto e este é formado por uma lista de tarefas. Faça o
-- que se pede:

-- a) Desenvolva a função = validTask :: Task -> Bool

-- que determina se uma tarefa é ou não válida. Dizemos que uma tarefa é válida
-- se o tempo de duração desta tarefa é maior que zero. Sua implementação deve
-- satisfazer os seguintes testes:
-- validTask (Task "tarefa 1" 10) == True
-- validTask (Task "tarefa 2" (-1)) == False

data Task = Task String Int
data Project = Project [Task]

validTask :: Task -> Bool
validTask (Task _ y)
    | y > 0     = True
    | otherwise = False 

-- 10 pontos

-- b) Desenvolva a função = validProject :: Project -> Bool

-- que determina se um projeto é composto apenas por tarefas válidas. Sua
-- implementação deve satisfazer os seguintes testes:
-- validProject (Project []) == True
-- validProject (Project [ Task "tarefa 1" 10, Task "tarefa 2" 20]) == True
-- validProject (Project [Task "tarefa 1" (-1)]) == False

validProject :: Project -> Bool
validProject (Project [])       = True
validProject (Project (x : xs)) = validTask x && validProject (Project xs)

-- c) Desenvolva a função = totalTime :: Project -> Int

-- que calcula o tempo total gasto para execução de um projeto. O tempo de
-- execução de um projeto consiste na soma do tempo tempo gasto por cada uma
-- das tarefas que o compõe. Sua implementação deve satisfazer os seguintes testes:
-- totalTime (Project []) == 0
-- totalTime (Project [ Task "tarefa 1" 10, Task "tarefa 2" 20]) == 30

-- 20 pontos

totalTime :: Project -> Int
totalTime (Project []) = 0
totalTime (Project xs) = sum [a | a <- xs, Task ]

-- Project xs
--     where
--         xs = [Task, Task]

-- Project [Task, Task]

-- 20 pontos