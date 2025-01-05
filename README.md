# Myg Chess Game

This is a chess game for Pharo based on Bloc, Toplo and Myg.

## How did we work?

We divided the work by kata:

- Camille: Refactor piece rendering
- Maggy: Create the chessboard graphical editor
- Seif-Eddin: Add pawn promotion

Each of us worked on our own branches, and we then merged the branches one by one.

## Getting started

### Getting the code

This code has been tested in Pharo 12. You can get it by installing the following baseline code:

```smalltalk
Metacello new
	repository: 'github://UnivLille-Meta/Chess:main';
	baseline: 'MygChess';
	onConflictUseLoaded;
	load.
```

### Using it

You can open the chess game using the following expression:

```smalltalk
board := MyChessGame freshGame.
board size: 800@600.
space := BlSpace new.
space root addChild: board.
space pulse.
space resizable: true.
space show.
```

## Katas

### Refactor piece rendering

**Goal:** Practice refactorings, double dispatch and table dispatch

To complete my kata, I worked step by step. First, I identified the methods that were causing issues. Then, I tested them to ensure there was no regression in the code during the refactoring process.

The MyBlackChessSquare and MyWhiteChessSquare classes implement double dispatch through the renderOnColor method. This method dynamically manages behavior based on both the type of the calling object and the type of the argument received.

Additionally, I used the hook and template pattern with the contents: method.

This method is defined in the MyChessSquare superclass and acts as a template.
It delegates part of its behavior to the MyBlackChessSquare and MyWhiteChessSquare subclasses by calling their specific renderOnColor method.
This approach ensures a clear separation between generic behavior (defined in the superclass) and specific details (handled by the subclasses).

The second step was to implement the Strategy design pattern, which allowed me to eliminate the remaining conditions required for my refactoring. This step was the most challenging for me because I had to understand how the Strategy design pattern works and then implement it in a context where inheritance was already present.

For the final step, I needed to refactor the code so that a piece would only have a color attribute.

### Make the chess board graphical editor

**Goal:** Practice large refactorings to decouple game logic from rendering

The current UI is really tied to the game engine. Clicking on the squares will try to move the pieces and play the game.
We would like to do a graphical board editor and reuse the graphics.
But this editor does not need the game logic behind.
As any *crazy* feature, the original developer (Guille P) did not prepare the engine for this.
But you can do it.

Questions and ideas that can help you in the process:
- How could you know that you're not breaking something while refactoring?
- Can you write tests that help you with the process?
- Refactoring and testing UI code can be challenging: this does not mean it is impossible!
- Can you do the refactoring in little steps that avoid breaking the code?

### Add pawn promotion

**Goal:** Practice code understanding and debugging

When pawns arrive to the back of the board, the pawn is promoted: it is transfomed into a major (queen, rook) or minor piece (knight, bishop), choice of the player.
When in an interactive UI, this requires asking the user what to do.
When in an automatic player/bot, this requires some automated decision approach.

As any *complicated* feature, the original developer (Guille P) left this for the end, and then left the project.
But you can do it.

Questions and ideas that can help you in the process:
- What tools help you finding the right place to put this new code?
- How can you find documentation and help to understand the graphical part that will implement, for example, a pop-up?
- The bot will not need a UI, how would you make it work without breaking the other existing code?

## Troubleshotting

- Exceptions in the Myg UI thread stop the event cycle. This makes the game "freeze": it receives events but the thread that treats them is not running. To restart the UI thread, execute the following:
```smalltalk
BlParallelUniverse all do: #startUniverse.
```
