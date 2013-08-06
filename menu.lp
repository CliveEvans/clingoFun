caprese :- tomato, mozarella, oil.

starter :- caprese.
main :- steak, fries.
dessert :- strawberries, iceCream.

menu1 :- starter, main.
menu2 :- main, dessert.

% choice rule
% minimum on the left, maximum on the right
1{choice1, choice2}1.

% negation as failure to model choice
choice1 :- menu1, not choice2.
choice2 :- menu2, not choice1.

menu :- choice1.
menu :- choice2.

% only answers with menu are allowed
% constraint
:- not menu.

% data aka fact
tomato.
mozarella.
oil.
steak.
fries.
strawberries.
iceCream.

% show only menu choice by the customer
#hide.
#show choice1.
#show choice2.
