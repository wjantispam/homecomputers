# This is about
# Memo
# Profiles
# Configuration
# Automation
# Useful tools

# Set up my profile
:20vs .             -- Set up a working dir in 20 char wide
                    -- Ctrl+w w to switch panel

# Vim
## Motions
H   M   L           -- High Middle Low
zt  zz  zb          -- Put cursor position to top, middle, or bottom
Ctrl+Y / Ctrl+E     -- Scrool Up and Down

## Editing
:e[dit] [++opt] [+cmd] {file}
:fin[d][!] [+opt] [+cmd] {file}
gf
Ctrl+^              -- Switch buffer

## Searching
*                   -- search forward for word under cursor
#                   -- Same as above, opposit direction
gd                  -- go to local declaration
:hls!               -- toggle search highlighting

## Bookmarks
m{a-zA-Z}           -- set a bookmark
`{mark}             -- acccess the bookmark
:marks              -- shows all the current marks
`.                  -- jump to last change

## Jumplist/Changelist
Ctrl+O / Ctrl+I     -- Cycle through :jumps
g; / g,             -- Cycle through :changes

## Buffers
:bn                 -- go to next buffer
:b {filename}       -- go to buffer {filename}
:bd                 -- delete current buffer
:buffers            -- print out all buffers
:buffdo {cmd}       -- execute {cmd} for all buffers
:n                  -- go to next file (based on args list)
:arga {filename}    -- add {filename} to arg list
:argl {files}       -- make a local arg copy via {files}
:args               -- print out all arguments

## Windows (Buffer viewports)
<Ctrl+w> s          -- split window
<Ctrl+w> v          -- split vertically
<Ctrl+w> q          -- close window
<Ctrl+w> w          -- alternate window
<Ctrl+w> r          -- rotate window
:windo {cmd}        -- execute {cmd} for all windows
:sf {FILE}          -- split window and :find {FILE}
:vert {cmd}         -- make any split {cmd} be vertical

## Tabs (Window containers)
gt                  -- go to next tab
gT                  -- go to prev tab
:tabc               -- close tab
:tabe               -- open tab
:tabo               -- close all other tabs



:so %
Reload this file -- useful to reload .vimrc file

:ctrl+f
Now you can use vim search etc to modify the cmd before you execute it

:windo difft

vim -O file1 file2

Sample motions
%                   go to first matching paren / bracket
[count]+            down to first non-blank chra of line
[count]$            to end of line
[count]f/F{char}    to next occurance of {char} 
[count]t/T{char}    to before next occurance of {char}
[count]h/j/k/l
[count]]m           Go to beginning of next method
[count]w/W          go to a word/WORLD to the right
[count]b/B          go to a word/WORLD to the left
[count]e/E          go to a end of word/WORLD to the right 


## Examples
[count][operations][text object/motion]
6+                  6x go down to line start
gUaW                capitalize a WORLD (gU --> Upcase)
3ce                 3x change to word end
4$                  4x go to end of line
d]m                 delete to start of next method
%                   jump to match of next paren or bracket


