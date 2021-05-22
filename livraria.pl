% Livraria
%Promocao de livros

%livro('Titulo', 'Autor', Genero, Ano, 'Editora', Preco)

livro('O Mundo de Sofia','Jostein Gaarder', fantasia, 1995, 'Cia das Letras', 60.00).
livro('Skyward', 'Brandon Sanderson', fantasia, 1995, 'Cia das Letras', 40.00).
livro('O nome do vento', 'Patrick Rothfuss', fantasia, 2014, 'Cia das Letras', 45.00).
livro('Marina', 'Carlos Ruiz Zafón', terror, 2012, 'Cia das Letras', 29.90).
livro('A Outra Volta do Parafuso', 'Henry James',terror, 2003, 'Terrores', 25.00).
livro('Renato Russo de A a Z', 'Assad', biografia, 2000, 'Letra', 5.00).
livro('Poesia Completa de Alvaro de Campos', 'Fernando Pessoa', classico, 2007, 'Companhia de Bolso', 15.00).
livro('Antologia Poetica', 'Vinicius de Moraes', classico, 1994, 'Companhia das Letras', 32.00).
livro('The Complete Tales and Poems of Edgar Allan Poe', 'Edgar Allan Poe', terror, 2010, 'Barnes & Noble', 100.00).
livro('Butcher Boy', 'Patrick McCabe', terror, 2021, 'Darkside Books', 59.90).
livro('Alice Atraves do Espelho', 'Lewis Carroll', 'ficcao', 2021, 'Darkside Books', 59.90).
livro('O iluminado', 'Stephen King', 'terror', 1999, 'Objetiva', 47.39).

%livro(T, A, G, N, E, P)

%regras 

%generos dos livros

%genero fantasia
fantasia(T, A, G, N, E, P) :- livro(T, A, G, N, E, P), G == fantasia.
fantasia(T, A, P) :- livro(T, A, G, _, _, P), G == fantasia .

%genero terror
terror(T, A, G, N, E, P) :- livro(T, A, G, N, E, P), G == terror.
terror(T, A, P) :- livro(T, A, G, _, _, P), G == terror.

%genero classico
classico(T, A, G, N, E, P) :- livro(T, A, G, N, E, P), G == classico.
classico(T, A, P) :- livro(T, A, G, _, _, P), G == classico.


%genero biografia
biografia(T, A, G, N, E, P) :- livro(T, A, G, N, E, P), G == biografia.
biografia(T, A, P) :- livro(T, A, G, _, _, P), G == biografia.

%genero ficcao
ficcao(T, A, G, N, E, P) :- livro(T, A, G, N, E, P), G == ficcao.
ficcao(T, A, P) :- livro(T, A, G, _, _, P), G == ficcao.

%lancamento livro

lancamento(T, A, G, N, E, P) :- livro(T, A, G, N, E, P), N => 2020.
lancamento(T, A, P) :- livro(T, A, _, N, _, P), N => 2020.


%preco popular
oferta(T, A, G, N, E, P) :- livro(T, A, G, N, E, P), P =< 20.00.
oferta(T, A, P) :- livro(T, A, _, _, _, P), P =< 20.00.
