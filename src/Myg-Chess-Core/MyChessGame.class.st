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
		'dsp'
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

	| buttonBishop buttonKnight buttonPawn buttonQueen buttonQueenWhite buttonRook editorPane |
	buttonBishop := ToButton new.
	buttonBishop labelText: 'Bishop'.
	buttonKnight := ToButton new.
	buttonKnight labelText: 'Knight'.
	buttonPawn := ToButton new.
	buttonPawn labelText: 'Pawn'.
	buttonQueen := ToButton new.
	buttonQueen labelText: 'Queen'.
	buttonRook := ToButton new.
	buttonRook labelText: 'Rook'.
	buttonQueenWhite := ToButton new.
	buttonQueenWhite labelText: 'QueenWhite'.

	editorPane := ToElement new.
	editorPane constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPane layout: BlLinearLayout vertical.
	editorPane layout cellSpacing: 10.
	editorPane margin: (BlInsets all: 20).
	editorPane matchParent.

	self addChild: editorPane.
	editorPane addChild: buttonBishop.
	editorPane addChild: buttonKnight.
	editorPane addChild: buttonPawn.
	editorPane addChild: buttonQueen.
	editorPane addChild: buttonRook.
	
	"buttonQueen whenClickedDo: [ self switchToAddMode ]."
	buttonQueen whenClickedDo: [ self addQueenColor ].
	
	buttonPawn whenClickedDo: [ self switchToAddMode ].


	^ self
]

{ #category : 'adding' }
MyChessGame >> addQueenColor [

	| buttonQueenBlack buttonQueenWhite editorPane |
	buttonQueenBlack := ToButton new.
	buttonQueenBlack labelText: 'QueenBlack'.
	buttonQueenWhite := ToButton new.
	buttonQueenWhite labelText: 'QueenWhite'.

	editorPane := ToElement new.
	editorPane constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPane layout: BlLinearLayout vertical.
	editorPane layout cellSpacing: 10.
	editorPane margin: (BlInsets all: 20).
	editorPane matchParent.


	self addChild: editorPane.
	editorPane addChild: buttonQueenBlack.
	editorPane addChild: buttonQueenWhite.
	
	buttonQueenBlack whenClickedDo: [ self switchToAddQueenBlackMode ].
	buttonQueenWhite whenClickedDo: [ self switchToAddMode ].

	^ self
]

{ #category : 'actions' }
MyChessGame >> cancel [
	"canceling the delete mode"

	| file |
	file := FileSystem workingDirectory / 'modeDelete.txt'.
	file exists ifTrue: [ file delete ].
	file writeStreamDo: [ :stream | "just create file" ]
]

{ #category : 'modification' }
MyChessGame >> changingRole [
	"Modification state Role"
	| doChange |
	doChange := false. 
	doChange := doChange not.
]

{ #category : 'playing' }
MyChessGame >> checkForMate [

	whitePlayer king isCheckMated ifTrue: [ self halt: 'Black wins!' ].
	blackPlayer king isCheckMated ifTrue: [ self halt: 'White wins!' ].
]

{ #category : 'delete' }
MyChessGame >> editor [

	| buttonDelete buttonFinsish buttonRole buttonAdd buttonCancel editorPane |
	buttonDelete := ToButton new.
	buttonDelete labelText: 'Delete!'.
	buttonFinsish := ToButton new.
	buttonFinsish labelText: 'Finish!'.
	buttonRole := ToButton new.
	buttonRole labelText: 'Change Role'.
	buttonAdd := ToButton new.
	buttonAdd labelText: 'Add piece'.
	buttonCancel := ToButton new.
	buttonCancel labelText: 'Cancel Delete'.

	editorPane := ToElement new.
	editorPane constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
	editorPane layout: BlLinearLayout vertical.
	editorPane layout cellSpacing: 10.
	editorPane margin: (BlInsets all: 20).
	editorPane matchParent.

	self addChild: editorPane.
	editorPane addChild: buttonDelete.
	editorPane addChild: buttonFinsish.
	editorPane addChild: buttonRole.
	editorPane addChild: buttonAdd.
	editorPane addChild: buttonCancel.

	buttonDelete whenClickedDo: [ self switchToDeleteMode ].
	buttonRole whenClickedDo: [ self changingRole ].
	buttonAdd whenClickedDo: [ 
		self add ].


	"appel method cancel with button"
	buttonCancel whenClickedDo: [ self cancel ].

	^ self
]

{ #category : 'as yet unclassified' }
MyChessGame >> initFileAddQB [

	| fileAdd |
	"data file add QW"
	fileAdd := FileSystem workingDirectory / 'modeQBAdd.txt'.
	fileAdd exists ifTrue: [ fileAdd delete ].
	fileAdd writeStreamDo: [ :stream | "just create file" ]
]

{ #category : 'as yet unclassified' }
MyChessGame >> initFileAddQW [
	|fileAdd|
	"data file add QW"
	fileAdd := FileSystem workingDirectory / 'modeAdd.txt'.
	fileAdd exists ifTrue: [ fileAdd delete ].
	fileAdd writeStreamDo: [ :stream | "just create file" ].
]

{ #category : 'as yet unclassified' }
MyChessGame >> initFileDelete [

	|fileDelete|
	"data file delete"
	fileDelete := FileSystem workingDirectory / 'modeDelete.txt'.
	fileDelete exists ifTrue: [ fileDelete delete ].
	fileDelete writeStreamDo: [ :stream | "just create file" ].

	
]

{ #category : 'as yet unclassified' }
MyChessGame >> initFileEdit [
	"data file edit"

	| fileEdit |
	fileEdit := FileSystem workingDirectory / 'modeEdit.txt'.
	fileEdit exists ifTrue: [ fileEdit delete ].
	fileEdit writeStreamDo: [ :stream | "just create file" ]
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

	| button buttonEditor infoPane fileDelete fileEdit fileAdd word |
	
	"data file delete"
	"
	fileDelete := FileSystem workingDirectory / 'modeDelete.txt'.
	fileDelete exists ifTrue: [ fileDelete delete ].
	fileDelete writeStreamDo: [ :stream |  ]."
	
	self initFileDelete.

	"data file edit"
	"
	fileEdit := FileSystem workingDirectory / 'modeEdit.txt'.
	fileEdit exists ifTrue: [ fileEdit delete ].
	fileEdit writeStreamDo: [ :stream |]."
	self initFileEdit. 
	
	"data file add QW"
	"
	fileAdd := FileSystem workingDirectory / 'modeAdd.txt'.
	fileAdd exists ifTrue: [ fileAdd delete ].
	fileAdd writeStreamDo: [ :stream | ]."
	self initFileAddQW.
	
	
	
	"data file add QB"
	"
	fileAdd := FileSystem workingDirectory / 'modeQBAdd.txt'.
	fileAdd exists ifTrue: [ fileAdd delete ].
	fileAdd writeStreamDo: [ :stream | ].
	"
	self initFileAddQW.

	"normal"
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
	infoPane constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal matchParent ].
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

	"switch to editMode"
	"
	buttonEditor whenClickedDo: [ self switchToEditorMode ].
	word := fileEdit readStreamDo: [ :stream | stream contents trimBoth ].
	word = 'editOn'
		ifTrue: [
			infoPane removeChild: button.
			self editor ]
		ifFalse: [ button ifNil: [ infoPane addChild: button ] ].
	"

	self layout: BlLinearLayout horizontal.
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal fitContent.
		aLayoutConstraints vertical fitContent ]
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

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddMode [

	| fileAdd textData |
	"Definition of mode"
	textData := 'addOn'.

	"Open and edit file"
	fileAdd := FileSystem workingDirectory / 'modeAdd.txt'.
	fileAdd writeStreamDo: [ :stream | stream nextPutAll: textData ]
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToAddQueenBlackMode [

	| fileAdd textData |
	"Definition of mode"
	textData := 'addQueenBlackOn'.

	"Open and edit file"
	fileAdd := FileSystem workingDirectory / 'modeQBAdd.txt'.
	fileAdd writeStreamDo: [ :stream | stream nextPutAll: textData ]
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToDeleteMode [

	| file textData |
	"Definition of mode"
	textData := 'deleteOn'.

	"Open and edit file"
	file := FileSystem workingDirectory / 'modeDelete.txt'.
	file writeStreamDo: [ :stream | stream nextPutAll: textData ]
]

{ #category : 'as yet unclassified' }
MyChessGame >> switchToEditorMode [

	| file textData |
	"Definition of mode"
	textData := 'editOn'.

	"Open and edit file"
	file := FileSystem workingDirectory / 'modeEdit.txt'.
	file writeStreamDo: [ :stream | stream nextPutAll: textData ]
]
