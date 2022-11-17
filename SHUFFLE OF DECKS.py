import random
#we will be shuffling
# next, lets start building list holders hold we can place our card in there.
cardFaces=[]
Suits=['Hearts','Diamond','Clubs','Spades']
royals=['J','Q','K','A']
deck=[]
#now lets start using loop to add our contains
for i in range(2,11):
    #This adds numbers 2-10 and converts to str
    cardFaces.append(str(i))
for j in range(4):
    cardFaces.append(royals[j])
for k in range(4):
    for l in range(13):
        card= (cardFaces[l]+" Of "+ Suits[k])
        deck.append(card)

random.shuffle(deck) #now lets shuffle
for m in range(52): #now see the cards!
    print(deck[m])
