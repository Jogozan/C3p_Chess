Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testAddPromotionButton [
    | pawn pane buttonCount |
    
    "Test pour ajouter un bouton de promotion"
    pawn := MyPawn new.
    pane := ToPane vertical.
    buttonCount := pane children size.
    
    pawn addPromotionButton: 'Queen' on: MyQueen toPane: pane.
    
    "Vérifier que le bouton a été ajouté"
    self assert: pane children size = (buttonCount + 1).
]

{ #category : 'tests' }
MyPawnTest >> testCanPromote [
    | whitePawn board blackPawn |
    
    "Initialisation du plateau"
    board := MyChessBoard empty.
    board initialize.
    
    "Test pour un pion blanc en position de promotion"
    whitePawn := MyPawn white.
    board at: 'e8' put: whitePawn.
    self assert: whitePawn canPromote.

    "Test pour un pion noir en position de promotion (e2)"
    blackPawn := MyPawn black.
    board at: 'e1' put: blackPawn.
    self assert: blackPawn canPromote.

    "Test pour un pion blanc qui n'est pas en position de promotion (e2)"
    board at: 'e2' put: whitePawn.
    self deny: whitePawn canPromote.

    "Test pour un pion noir qui n'est pas en position de promotion (e7)"
    board at: 'e7' put: blackPawn.
    self deny: blackPawn canPromote.
]

{ #category : 'tests' }
MyPawnTest >> testOnPromotionDo [
    | whitePawn promotionTriggered board|
    
    "Initialisation du plateau"
    board := MyChessBoard empty.
    board initialize.
    
    "Test pour vérifier que le bloc de promotion est exécuté"
    whitePawn := MyPawn white.
    board at: 'e8' put: whitePawn.
    
    promotionTriggered := false.
    whitePawn onPromotionDo: [ :p :options | 
        promotionTriggered := true.
    ].
    
    whitePawn promoteIfNeeded.
    self assert: promotionTriggered.
]

{ #category : 'tests' }
MyPawnTest >> testPromoteIfNeeded [
    | whitePawn promotionTriggered board |
    
    "Initialisation du plateau"
    board := MyChessBoard empty.
    board initialize.
    
    "Test pour un pion blanc en position de promotion"
    whitePawn := MyPawn white.
    board at: 'e8' put: whitePawn.
    
    promotionTriggered := false.
    whitePawn onPromotionDo: [ :p :options | 
        promotionTriggered := true.
    ].
    
    whitePawn promoteIfNeeded.
    self assert: promotionTriggered.
]

{ #category : 'tests' }
MyPawnTest >> testPromoteTo [
    | whitePawn queenSquare queen board |
    
    "Initialisation du plateau"
    board := MyChessBoard empty.
    board initialize.
    
    "Créer un pion blanc et le placer sur e7"
    whitePawn := MyPawn white.
    board at: 'e7' put: whitePawn.
    
    "Définir le bloc de promotion"
    whitePawn onPromotionDo: [ :p :options | 
        "Ce bloc sera exécuté lors de la promotion"
        queen := p promoteTo: MyQueen.
    ].
    
    "Déplacer le pion vers e8 pour déclencher la promotion"
    queenSquare := board at: 'e8'.
    whitePawn moveTo: queenSquare.
    
    self assert: queenSquare contents pieceColor = whitePawn pieceColor.
]

{ #category : 'tests' }
MyPawnTest >> testPromoteToRandom [
    | whitePawn queenSquare promotedPiece board |
    
    "Initialisation du plateau"
    board := MyChessBoard empty.
    board initialize.
    
    "Créer un pion blanc et le placer sur e7"
    whitePawn := MyPawn white.
    board at: 'e7' put: whitePawn.
    
    "Déplacer le pion vers e8 avec promotion aléatoire"
    queenSquare := board at: 'e8'.
    whitePawn moveTo: queenSquare isAuto: true.
    
    "Vérifier que la promotion a bien eu lieu"
    promotedPiece := queenSquare contents.
    self assert: promotedPiece pieceColor = whitePawn pieceColor.
]
