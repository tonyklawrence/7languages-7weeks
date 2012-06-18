/* Reverse the elements of a list */

myReverse([], []).
myReverse([A], [A]).
myReverse([Head|Tail], Reversed) :- myReverse(Tail, TailReversed), append(TailReversed, [Head], Reversed).