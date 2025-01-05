Class {
	#name : 'MyChessGameTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessGameTest >> testConfigurePromotionFor [
    | game whitePawn promotionTriggered board |
    
    "Initialisation du plateau et du jeu"
    board := MyChessBoard empty.
    board initialize.
    game := MyChessGame freshGame.  "Utilisation du bon constructeur"
    
    "Test pour configurer la promotion d'un pion blanc"
    whitePawn := MyPawn white.
    board at: 'e8' put: whitePawn.
    
    promotionTriggered := false.
    game configurePromotionFor: whitePawn.
    
    whitePawn onPromotionDo: [ :p :options | 
        promotionTriggered := true.
    ].
    
    whitePawn promoteIfNeeded.
    self assert: promotionTriggered.
]

{ #category : 'tests' }
MyChessGameTest >> testShowPromotionWindowFor [
    | game whitePawn window board |
    
    "Initialisation du plateau et du jeu"
    board := MyChessBoard empty.
    board initialize.
    game := MyChessGame freshGame.  "Utilisation du bon constructeur"
    
    "Test pour afficher une fenêtre de promotion"
    whitePawn := MyPawn white.
    board at: 'e7' put: whitePawn.
    
    "Simuler l'affichage de la fenêtre"
    window := game showPromotionWindowFor: whitePawn withOptions: { MyQueen. MyKnight. MyRook. MyBishop }.
    
    "Vérifier que la fenêtre a été créée"
    self assert: window notNil.
]
