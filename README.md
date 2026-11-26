# DotSpawn

A reflex game for DOS written in x86 assembly. Squares appear on screen and you have to catch them with the mouse before they are gone.

## The problem

I wanted to understand what a program does when there is nothing underneath it: no graphics library, no event loop, no timer API. A small game is a good test, because it needs drawing, input, sound, randomness and timing all at once.

## What I built

About 1,000 lines of 16-bit assembly (TASM, IDEAL mode, small model) that run in DOSBox.

- Two modes: click a moving square (10 rounds), or touch a square with the cursor before it disappears (20 rounds)
- Three difficulty levels that change the speed
- A beep on every hit and a jingle at the end
- A score screen drawn as ASCII art, then replay or exit

## How it works

| Need | How it is done |
|---|---|
| Graphics | VGA mode 13h (320x200, 256 colors), one pixel at a time through `int 10h` |
| Mouse | `int 33h` for position and buttons |
| Keyboard and text | DOS `int 21h` |
| Sound | The PC speaker, by programming the timer chip through ports 43h, 42h and 61h |
| Random position and color | The DOS clock, multiplied and reduced to the range |
| Timing | Busy-wait loops scaled by the difficulty level |

## Design decisions

- Hit detection reads the color of the pixel under the cursor instead of comparing coordinates with the square's rectangle. If the pixel has the square's color, it's a hit. That is one interrupt call in place of four comparisons.
- The moving square is not redrawn in full. Each step erases the column it leaves and draws the column it enters, which keeps the animation smooth when every pixel is a BIOS call.
- Text mode for menus and score, graphics mode only for play. The ASCII-art title and score digits are plain strings in the data segment.
- Long conditional jumps go through small trampoline labels, since 8086 conditional jumps only reach 127 bytes.

## Running it

You need DOSBox with TASM and TLINK available inside it. From the folder with `Main.asm`:

```
tasm /zi Main.asm
tlink /v Main.obj
Main
```

Game speed follows the DOSBox cycles setting, because the delays are busy-wait loops.

## Known issues

A final score of 0 is not printed on the end screen.
