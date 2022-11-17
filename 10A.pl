male(ramjibhai).
male(dhirubhai).
male(hitesh).
male(harsh).
male(pravinbhai).
female(shantiben).
female(hansaben).
female(bhartiben).
female(krishna).
female(harshita).
%parent(parent_name,child_name)
parent(ramjibhai,dhirubhai).
parent(ramjibhai,pravinbhai).
parent(shantiben,dhirubhai).
parent(shantiben,pravinbhai).
parent(dhirubhai,hitesh).
parent(dhirubhai,krishna).
parent(hansaben,hitesh).
parent(hansaben,krishna).
parent(pravinbhai,harsh).
parent(pravinbhai,harshita).
parent(bhariben,harsh).
parent(bhartiben,harshita).

/*x should be male and parent of Y*/
father(X,Y):-male(X),parent(X,Y).

/*x should be female and parent of Y*/
mother(X,Y):-female(X),parent(X,Y).

%x should be female,X and Y should have same father and belong to each other
batsman(sachin). batsman(msd). batsman(virat). bowler(harbhajan).
cricketer(X):-bowler(X). cricketer(X):-batsman(X). batsman(sachin). batsman(msd). batsman(virat). bowler(harbhajan).
cricketer(X):-bowler(X). cricketer(X):-batsman(X).
batsman(sachin). batsman(msd). batsman(virat). bowler(harbhajan).
cricketer(X):-bowler(X). cricketer(X):-batsman(X).

sister(X,Y):-female(X),father(Z,X),father(Z,Y),X \= Y.

%x should be male,X and Y should have same father and belong to each other
brother(X,Y):-male(X),father(Z,X),father(Z,Y),X \= Y.
cousin(X,Y):-father(Z,X),father(W,Y),brother(Z,W).
grandma(X,Y):-father(Z,Y),mother(X,Z).
grandma(X,Y):-father(Z,Y),father(X,Z).
uncle(X,Y):-father(Z,Y),brother(X,Z).
aunt(X,Y):-uncle(Z,Y),father(Z,Q),mother(X,Q).
nephew(X,Y):-male(X),father(X,Z),brother(Y,Z).
niece(X,Y):-female(X),father(X,Z),brother(Y,Z).
