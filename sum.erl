-module(sum).
-export([sum/1,sumT/1]).

%%--------------------
%%------SUM-----------
%%-direct recursion---
%%--------------------

sum([]) ->
 0;
sum([X|Xs])->
 X + sum(Xs).


%%--------------------
%%------SUM-----------
%%-tail recursion-----
%%--Example-----------
%%-sumT([1,2,3])------
%%--sumT([1,2,3],0)---
%%---sumT([2,3],0+1 )-
%%----sumT([3]),1+2)--
%%-----sumT([],6)-----
%%--------6-----------


sumT(Xs)->
  sumT(Xs,0).
  
sumT([],S)->
 S;
sumT([X|Xs],S) ->
  sumT(Xs,S+X).