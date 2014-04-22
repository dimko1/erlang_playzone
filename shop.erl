-module(shop).
-export([cost/1]).

cost(oranges) -> 1;
cost(newspaper) -> 3;
cost(apples) -> 5;
cost(pears) -> 12;
cost(milk) -> 7.