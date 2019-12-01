# Vim

## Copy pasting
* Copy to system clipboard is done via "+y
* Paste from system clipboard is done via "+p or "+P depending on before or after

## Searching
* /pattern for forward search
* ?pattern for backward search
* n to continue in the same direction
* N to go in the opposite direction
* :noh to clear highlighting of current search
* **%s/old/new/gc to replace everything with confirmations**

## Visual mode
* o to move to opposite corner of block

## Moving/editing
* A to append at end of line
* I to insert at beginning of line
* cc to change an entire line
* r to replace a single character
* **J to join line below with current one**
* *0w to go to first word and ^ to go to first non-blank char - useful for skipping tab prefixes**

# Tmux
## Window/pane controls
* C-b p, n to move between windows
* C-b h,j,k,l to move between panes
* C-b : swap-pane -t 0 -s 1 to swap panes where 0, 1 are pane numbers (use C-b q to reveal pane numbers)
* C-b : swap-window -t 0 -s 1
* C-b | to split window into vertical panes
* C-b _ to split window into horizontal panes
* C_b < or > to swap panes
* C-d to exit!

## Misc controls
* C-b r to reload config file
