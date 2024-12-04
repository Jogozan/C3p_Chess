"
# Example

```
board := MyChessGame freshGame.
board size: 800@600.
space := BlSpace new.
space root addChild: board.
space pulse.
space resizable: true.
space show.
```
"
Class {
	#name : 'MyChessGame',
	#superclass : 'BlElement',
	#instVars : [
		'piece',
		'square',
		'board',
		'currentPlayer',
		'whitePlayer',
		'blackPlayer',
		'moveCount',
		'movesLabel',
		'moveCountLabel',
		'moves',
		'deleteMode',
		'dsp',
		'mode'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'instance creation' }
MyChessGame class >> freshGame [

	^ self fromFENString: 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1'
]

{ #category : 'instance creation' }
MyChessGame class >> fromFENString: aFENString [

	^ super new
		  initializeFromFENGame: (MyFENParser parse: aFENString);
		  yourself
]

{ #category : 'instance creation' }
MyChessGame class >> new [
	
	self error: 'Please use one of the other constructors'
]

{ #category : 'template' }
MyChessGame >> activity: piece to: square [

	"Pour executer le template -> faire appel des differentes methodes"
	| x |
	x := MyPiece new.
	x legalTargetSquares.
	self move: piece to: square.
	self recordMovementOf: piece to: square.
	self x
]

{ #category : 'delete' }
MyChessGame >> add [

	| buttonBw buttonBb buttonQw buttonQb buttonKw buttonKb buttonPw buttonPb buttonRw buttonRb buttonKingW buttonKingB editorPaneBishop editorPaneQueen editorPaneKnight editorPanePawn editorPaneRook editorPaneKing editorPane |
	buttonBw := ToButton new.
	buttonBw labelText: 'Bishop White'.
	buttonBb := ToButton new.
	buttonBb labelText: 'Bishop Black'.
	buttonQw := ToButton new.
	buttonQw labelText: 'Queen White'.
	buttonQb := ToButton new.
	buttonQb labelText: 'Queen Black'.
	buttonKb := ToButton new.
	buttonKb labelText: 'Knight Black'.
	buttonKw := ToButton new.
	buttonKw labelText: 'Knight White'.
	buttonPb := ToButton new.
	buttonPb labelText: 'Pawn Black'.
	buttonPw := ToButton new.
	buttonPw labelText: 'Pawn White'.
	buttonRw := ToButton new.
	buttonRw labelText: 'Rook White'.
	buttonRb := ToButton new.
	buttonRb labelText: 'Rook Black'.
	buttonKingW := ToButton new.
	buttonKingW labelText: 'King White'.
	buttonKingB := ToButton new.
	buttonKingB labelText: 'King Black'.

	editorPane := ToElement new.
	editorPane constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPane layout: BlLinearLayout vertical.
	editorPane layout cellSpacing: 10.
	editorPane margin: (BlInsets all: 20).
	editorPane matchParent.

	editorPaneBishop := ToElement new.
	editorPaneBishop constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPaneBishop layout: BlLinearLayout horizontal.
	editorPaneBishop layout cellSpacing: 10.
	editorPaneBishop margin: (BlInsets all: 10).

	editorPaneQueen := ToElement new.
	editorPaneQueen constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPaneQueen layout: BlLinearLayout horizontal.
	editorPaneQueen layout cellSpacing: 10.
	editorPaneQueen margin: (BlInsets all: 10).

	editorPaneKnight := ToElement new.
	editorPaneKnight constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPaneKnight layout: BlLinearLayout horizontal.
	editorPaneKnight layout cellSpacing: 10.
	editorPaneKnight margin: (BlInsets all: 10).

	editorPanePawn := ToElement new.
	editorPanePawn constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPanePawn layout: BlLinearLayout horizontal.
	editorPanePawn layout cellSpacing: 10.
	editorPanePawn margin: (BlInsets all: 10).

	editorPaneRook := ToElement new.
	editorPaneRook constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPaneRook layout: BlLinearLayout horizontal.
	editorPaneRook layout cellSpacing: 10.
	editorPaneRook margin: (BlInsets all: 10).

	editorPaneKing := ToElement new.
	editorPaneKing constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPaneKing layout: BlLinearLayout horizontal.
	editorPaneKing layout cellSpacing: 10.
	editorPaneKing margin: (BlInsets all: 10).

	self addChild: editorPane.

	editorPane addChild: editorPaneBishop.
	editorPane addChild: editorPaneQueen.
	editorPane addChild: editorPaneKnight.
	editorPane addChild: editorPanePawn.
	editorPane addChild: editorPaneRook.
	editorPane addChild: editorPaneKing.
	editorPane background: Color gray.
	editorPaneBishop background: Color veryVeryLightGray.
	editorPaneQueen background: Color veryVeryLightGray.
	editorPaneKnight background: Color veryVeryLightGray.
	editorPanePawn background: Color veryVeryLightGray.
	editorPaneRook background: Color veryVeryLightGray.
	editorPaneKing background: Color veryVeryLightGray.

	editorPaneBishop addChild: buttonBb.
	editorPaneBishop addChild: buttonBw.

	editorPaneQueen addChild: buttonQb.
	editorPaneQueen addChild: buttonQw.

	editorPaneKnight addChild: buttonKb.
	editorPaneKnight addChild: buttonKw.

	editorPanePawn addChild: buttonPb.
	editorPanePawn addChild: buttonPw.

	editorPaneRook addChild: buttonRb.
	editorPaneRook addChild: buttonRw.

	editorPaneKing addChild: buttonKingB.
	editorPaneKing addChild: buttonKingW.

	buttonQb whenClickedDo: [ self switchToAddQueenBlackMode ].
	buttonQw whenClickedDo: [ self switchToAddQueenWhiteMode ].
	buttonPb whenClickedDo: [ self switchToAddPawnBlackMode ].
	buttonPw whenClickedDo: [ self switchToAddPawnWhiteMode ].
	buttonBb whenClickedDo: [ self switchToAddBishopBlackMode ].
	buttonBw whenClickedDo: [ self switchToAddBishopWhiteMode ].
	buttonKb whenClickedDo: [ self switchToAddKnightBlackMode ].
	buttonKw whenClickedDo: [ self switchToAddKnightWhiteMode ].
	buttonRw whenClickedDo: [ self switchToAddRookWhiteMode ].
	buttonRb whenClickedDo: [ self switchToAddRookBlackMode ].
	buttonKingW whenClickedDo: [ self switchToAddKingWhiteMode ].
	buttonKingB whenClickedDo: [ self switchToAddKingBlackMode ].

	^ self
]

{ #category : 'accessing' }
MyChessGame >> board [
	^ board
]

{ #category : 'actions' }
MyChessGame >> cancel [

	self switchToExitMode
]

{ #category : 'playing' }
MyChessGame >> checkForMate [

	whitePlayer king isCheckMated ifTrue: [ self halt: 'Black wins!' ].
	blackPlayer king isCheckMated ifTrue: [ self halt: 'White wins!' ].
]

{ #category : 'delete' }
MyChessGame >> editor [

	| buttonDelete buttonAdd buttonCancel editorPane |
	buttonDelete := ToButton new.
	buttonDelete labelText: 'Delete!'.
	buttonAdd := ToButton new.
	buttonAdd labelText: 'Add piece'.
	buttonCancel := ToButton new.
	buttonCancel labelText: 'Exit Edit'.

	editorPane := ToElement new.
	editorPane constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPane layout: BlLinearLayout vertical.
	editorPane layout cellSpacing: 10.
	editorPane margin: (BlInsets all: 20).
	editorPane matchParent.
	editorPane background: Color gray.

	self addChild: editorPane.
	editorPane addChild: buttonDelete.
	editorPane addChild: buttonAdd.
	editorPane addChild: buttonCancel.

	buttonDelete whenClickedDo: [ self switchToDeleteMode ].
	buttonCancel whenClickedDo: [ self cancel ].
	buttonAdd whenClickedDo: [ self add ].

	^ self
]

{ #category : 'initialization' }
MyChessGame >> initialize [

	super initialize.
	self initializeFonts.

	moves := OrderedCollection new.
	whitePlayer := MyPlayer new white game: self.
	blackPlayer := MyPlayer new black game: self
]

{ #category : 'initialization' }
MyChessGame >> initializeFonts [

	"We use fonts to render the characters, and they should be loaded (and downloaded if not there yet)"
	| library |
	library := AeFTLibrary newInitialized.
	MyOpenChessDownloadedFont new
		downloadDirectory: AeFilesystemResources downloadedFontsDirectory;
		ensureDownloaded;
		firstFaceUsing: library.


	AeFontManager resetGlobalInstance.
	AeFontManager globalInstance scanDirectory:
		AeFilesystemResources fontsDirectory
]

{ #category : 'initialization' }
MyChessGame >> initializeFromFENGame: aFENGame [

	| button buttonEditor infoPane |
	aFENGame sideToMove = 'White'
		ifTrue: [ currentPlayer := whitePlayer ]
		ifFalse: [ currentPlayer := blackPlayer ].

	moveCount := aFENGame moveCount.

	board := MyChessBoard fromFENBoard: aFENGame board.
	board game: self.
	button := ToButton new.
	button labelText: 'Play!'.
	buttonEditor := ToButton new.
	buttonEditor labelText: 'Editor !'.

	infoPane := ToElement new.
	infoPane constraintsDo: [ :c | c vertical fitContent ].
	infoPane layout: BlLinearLayout vertical.
	infoPane layout cellSpacing: 10.
	infoPane margin: (BlInsets all: 20).
	infoPane matchParent.

	movesLabel := ToLabel new beMultiLine.
	movesLabel matchParent.

	self addChild: board.
	self addChild: infoPane.
	infoPane addChild: movesLabel.
	infoPane addChild: button.
	infoPane addChild: buttonEditor.
	button whenClickedDo: [ self play ].
	buttonEditor whenClickedDo: [ self editor ].

	self layout: BlLinearLayout horizontal.
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal fitContent.
		aLayoutConstraints vertical fitContent ]
]

{ #category : 'accessing' }
MyChessGame >> mode [
	^ mode
]

{ #category : 'accessing' }
MyChessGame >> modeString [

	^ mode modeString
]

{ #category : 'public' }
MyChessGame >> move: piece to: square [

	piece moveTo: square.
	self recordMovementOf: piece to: square.
]

{ #category : 'accessing' }
MyChessGame >> pieces [

	^ board pieces
]

{ #category : 'playing' }
MyChessGame >> play [

	self initFile.
	currentPlayer play.
	currentPlayer = whitePlayer
		ifTrue: [ currentPlayer := blackPlayer ]
		ifFalse: [ 
			moveCount := moveCount + 1.
			currentPlayer := whitePlayer ].
	self checkForMate
]

{ #category : 'moves' }
MyChessGame >> recordMovementOf: aPiece to: aSquare [
	"moves add: (MyMove piece: aPiece square: aSquare name)."

	| prefix movesText |
	prefix := currentPlayer isWhite
		          ifTrue: [ moveCount asString , '.' ]
		          ifFalse: [ '' ].
	moves add: prefix , ' ' , aPiece id , aSquare name.

	movesText := String streamContents: [ :stream |
		| currentLine |
		currentLine := ''.
		moves do: [ :m |
			currentLine := currentLine, ' ', m.
			currentLine size > 20 ifTrue: [ 
				stream nextPutAll: currentLine.
				stream cr.
				currentLine := ''.
			]
		].
		stream nextPutAll: currentLine
	].
	

	movesLabel text: movesText
]

{ #category : 'accessing' }
MyChessGame >> removePieceAt: square [
    
    self at: square put: nil.
]

{ #category : 'accessing' }
MyChessGame >> state: aState [

	modeString := aState
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddBishopBlackMode [

	| textData |
	textData := 'addBbOn'.
	self switchToMode: textData.

]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddBishopWhiteMode [

	| textData |
	textData := 'addBwOn'.
	self switchToMode: textData.
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddKingBlackMode [

	| textData |
	textData := 'addKibOn'.
	self switchToMode: textData.
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddKingWhiteMode [

	| textData |
	textData := 'addKiwOn'.
	self switchToMode: textData.
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddKnightBlackMode [

	| textData |
	textData := 'addKbOn'.
	self switchToMode: textData
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddKnightWhiteMode [

	| textData |
	textData := 'addKwOn'.
	self switchToMode: textData
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddPawnBlackMode [

	| textData |
	textData := 'addPbOn'.
	self switchToMode: textData
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddPawnWhiteMode [

	| textData |
	textData := 'addPwOn'.
	self switchToMode: textData
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddQueenBlackMode [

	| textData |
	textData := 'addQbOn'.
	self switchToMode: textData.
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddQueenWhiteMode [

	| textData |
	textData := 'addQwOn'.
	self switchToMode: textData
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddRookBlackMode [

	| textData |
	textData := 'addRbOn'.
	self switchToMode: textData
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddRookWhiteMode [

	| textData |
	textData := 'addRwOn'.
	self switchToMode: textData 
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToDeleteMode [

	| textData aModeObject |
	textData := 'deleteOn'.
	aModeObject := MyDeleteMode new.
	mode := aModeObject
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToExitMode [

	| textData |
	textData := 'exitOn'.
	self switchToMode: textData
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToMode: textData [

	| newMode |
	newMode := MyGameMode new.
	newMode modeString: textData.
	mode := newMode
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToMode: textData modeObject: aModeObject [
	
	mode:= aModeObject

]
