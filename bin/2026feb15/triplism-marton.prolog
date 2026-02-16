valid_order(L, L).
valid_order(L, L1) :- reverse(L, L1).

flippets([], []).
flippets([SourceHD|SourceTL], [ResultHD|ResultTL]) :- valid_order(SourceHD, ResultHD), flippets(SourceTL, ResultTL).

Input = ["ABC", "ADE", "AGF", "BDF", "BEG", "CDG", "CFE"],
maplist(string_chars, Input, Input_Chars),
flippets(Input_Chars, Solution_Chars),
maplist(string_chars, Solutions, Solution_Chars).
