%%--------------------------------------------------
%%Library with usefull functions
%%--------------------------------------------------
-module(misc_lib).
-export([for/3, sum/1, map/2]).

%%##################################################
%%GENERAL FUNCTIONS
%%##################################################

%%--------------------------------------------------
%%FOR LOOP
%%--------------------------------------------------
for(Max,Max,F) -> [F(Max)];
for(I, Max, F) -> [F(I)|for(I+1, Max, F)].


%%##################################################
%%LIST FUNCTIONS
%%##################################################

%%--------------------------------------------------
%%RECEIVING SUM OF THE LIST ELEMENTS
%%Usage:
%% L = [1, 4, 10].
%% misc_lib:sum(L).
%% 15
%%--------------------------------------------------
sum([H|T])->H+sum(T);
sum([])->0.

%%--------------------------------------------------
%%MAPPING FUNCTION TO THE LIST ELEMENTS
%%Usage:
%% 
%%--------------------------------------------------
map(_, [])-> [];
map(F, [H|T])->[F(H)|map(F, T)].

