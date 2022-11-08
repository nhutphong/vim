# menu
* [tips](#tips)
* [buffer](#buffer-hotkey)
* [fold-hotkey](#fold-hotkey)
* [replace](#replace): use ex-mode, copyto, moveto, regular
* [bash](#bash)
* [buffer-ex](#buffer-ex): open file, buffer, verical, horizontal, ...
* [motion](#motion): default of vim
* [easymotion](#easymotion): jumpto quick(search)
* [searching](#searching): copy change cut
* [targets.vim](#targets): change, copy, cut content in pair, quotes, tag-html
* [vim-surround](#vim-surround): add, change, cut pair
* [title-case](#title-case)
* [tabular.vim](#tabular): alignment
* [emmet](#emmet)
* [undo](#undo)
* [text-object](#text-object)
* [insert-mode](#insert-mode)
* [indent, visual commands](#indent)
* [register](#register): paste content of command, use double quotes: "{char}p
* [macros](#macros): stored commands, run macros: {int}@{char}
* [mark](#mark): jumpto, use quotes: '{char}
* [vim-signature](#vim-signature): == mark
* [tmux](#tmux)
* [terminal](#terminal)

---

<h1 id="tips">tips</h1>

```

/var enter
cgn{new-word}jj
n.      n jumpto to next word, . repeat cmd truoc do


20gg        jumpto line20
10-         -10 jumpto line
10 enter    +10 jumpto line

macros:
    q{macros-name=char}         register macros
    code vim
    q       end register macros

    @macros-name        run macros da register

#normal-mode
ctrl x  / ctrl a        count -1 / +1 
:noh        turn off searching highlight

ki hieu ^ trong menu of vim ==== la phim ctrl
u           undo=prev=qua-khu
ctrl r      redo=next=tuong-lai

# nerdtree
1 tab default co:
    buffer nerdtree(=tree folder manage folders files)
    buffer empty

## open-file
ctrl n      newtab + buffer empty
t           cursor tai folder thi, la newtab chua nerdtree+buffer-empty
t           open file into newtab
s       open file theo chieu doc=vertical buffer
i       open file theo chieu ngang=horizontal buffer

:tabc       = close 1 tab == close all buffer
gT      prev tab
gt      next tab

## nerdtree #tree=cay-folders
<f10>    =     :NerdTree
o       open tree
x       close tree
u       jumpto prev tree
C       change tree root to cursor(select dir)
CD      change tree root to cwd 
cd      set pwd is current tree


ctrl j          snippet = autocomple-code
zi              fold = show or hide code

```

<h1 id="buffer-hotkey">buffer-hotkey</h1>

```

## buffer with hotkey, ex-command
ctrl oo         open file new closed
ctrl wn         new buffer empty, horizontal
Ctrl wq         quit a buffer
ctrl ww         select next buffer
ctrl wr         swap buffer above

:e[dit] file            edit a file in a new buffer
:bn[ext]                go to the next buffer
:bp[revious]            go to the previous buffer
:bd[elete]              delete a buffer (close a file)
:b[uffer]#              go to a buffer by index #
:b[uffer] file          go to a buffer by file
:ls or :buffers         list all open buffers
:sp[lit] file           open a file in a new buffer and split window
:vs[plit] file          open a file in a new buffer and vertically split window
:vert[ical] ba[ll]       edit all buffers as vertical windows
:tab ba[ll]              edit all buffers as tabs

Ctrl wv        split buffer vertically=left-right
Ctrl ws        split buffer horizontal=above-below
Ctrl wT        move current buffer into newtab
Ctrl wx        exchange current buffer with next one
Ctrl w=        make all buffers equal height & width

Ctrl wh        move cursor to the left buffer (vertical split)
Ctrl wl        move cursor to the right buffer (vertical split)
Ctrl wk        move cursor to the buffer above (horizontal split)
Ctrl wj        move cursor to the buffer below (horizontal split)

Ctrl wH        swap buffer left-vertical=doc
Ctrl wL        swap buffer right-vertical=doc
Ctrl wK        swap buffer above-horozontal=ngang
Ctrl wJ        swap buffer below-horozontal=ngang


:tabnew or :tabnew {page.words.file}         open a file in a new tab
gt or :tabn[ext]                 move to the next tab
gT or :tabp[revious]             move to the previous tab
#gt                          move to tab number #
:tabm[ove] #                 move current tab to the #th position (indexed from 0)
:tabc[lose]                  close the current tab and all its windows
:tabo[nly]                   close all tabs except for the current one
:tabdo command               run the command on all tabs (e.g. :tabdo q - closes all opened tabs)

```

<h1 id="fold-hotkey">fold-hotkey</h1>

```

zf       manually define a fold up to motion
zd       delete fold under the cursor
za       toggle fold under the cursor
zA
zo       open fold under the cursor
zc       close fold under the cursor
zr       reduce (open) all folds by one level
zm       fold more (close) all folds by one level
zi       toggle folding functionality
]c       jump to start of next change
[c       jump to start of previous change
do or :diffg[et]             obtain (get) difference (from other buffer)
dp or :diffpu[t]             put difference (to other buffer)
:diffthis                    make current window part of diff
:dif[fupdate]                update differences
:diffo[ff]                   switch off diff mode for current window

:source ~/.vim/vimrc    reload vim

<leader> mapto ;
;vimrc      open vimrc
;zshrc      open zshrc
;bashrc     open bashrc


#map #noremap
<f2>     =     macros searching
<f5>     =     :UndotreeToggle
<f8>     =     :TagbarToggle


# noremap
noremap jj <esc>
noremap \ jj        "\ tuc jumpto to down 2 line, khong phai <esc>

noremap remap key = root key vim NOT recursive

# range

%                all lines

:[range]{mode} [cmd=motion ...]
:%norm A;          -     add ';' vao end all lines
:%norm di'             -     cut content in ''
:28put=range(5,55)     -     list numbers into lines under line28

:for i in range(1,20) | put='192.168.1'.i | endfor

:colorscheme <c-d>     #     list colorscheme

#cut #change #copy use :command from line number ot line number
:[from],[to]{d,c,y}

:3,8y       copy from line3 to line8
:3,10d      cut from line3 to line10
:8y         copy line8
:8d         cut line8

:%d         cut all lines
:.,$d       cut current line to end file

```

---

<h1 id="replace">replace</h1>

```

#substitute #replace-word #moveto #copyto #ex

?pattern?       prev
/pattern/       next

%s / 1,$    all lines
s           chi 1 line
gi          khong phan biet lower upper
gI          phan biet lower upper
gc          thong bao truoc khi action
gic         aciton cua 2 line tren

'<,'>     -     select content visual mode
&         -     repeat replace
*         -     zero or more characters

0       first file
$       end file
.       current line
.+3     line1049 = line1046+3

:3,5d           delete line-range3,5
:3,5t 30        line-range3,5 copyto below line30
:3,5m 30        line-range3,5 moveto below line30

:%s/old/new/g           replace all 'old' thanh 'new'
:s/du.g/thong == :s/du*g/thong

#d=cut t=copyto m=moveto
:21,25d	    delete lines 21 to 25 inclusive
:$d	        delete the last line
:1,.-1d	    delete all lines before the current line
:.+1,$d	    delete all lines after the current line
:21,25t 30  	copy lines 21 to 25 inclusive to just after line 30     #copyto
:$t 0	        copy the last line to before the first line             #copyto
:.t .+10        copy current line to curent line+10
:21,25m 30  	move lines 21 to 25 inclusive to just after line 30     #moveto
:$m 0	        move the last line to before the first line             #moveto

#use mark in command 
:'a,'bd	                    delete lines from mark a to mark b, inclusive
:.,'bd	                    delete lines from the current line to mark b, inclusive
:'a,'bm 0	                move lines from mark a to b inclusive, to the beginning
:'a,'bw file.txt	        write lines from mark a to b to file.txt
:'a,'bw >> file.txt     	append lines from mark a to b to file.txt

\={vimcode}
:%s//\=@a/g       |     insert content with run macros a
:%s//<c-r>0/g     |     insert content with register 0

:%s/old/new/g           Replace all occurences of old by new in file
:%s/onward/forward/gi	Replace onward by forward, case unsensitive=ko phan biet lower upper
:%s/old/new/gc          Replace all occurences with confirmation=thong bao
:%s/^/hello/g	        Replace the begining of each line by hello
:%s/$/Harry/g           Replace the end of each line by Harry
:.,$s/dung/thong/g      replace 'dung' by thong from current line to end line of file
:.+4,$s/dung/thong/g
:.,+4/dung/thong/g
:36,42s/Unix/Linux/g    Replace Unix by Linux, line36 to  line42

\<str_old\>
\(bad|good\)
:s/\<is\>/was/g         replace chinh xac word=is = was
:s/\(bad|godd\)/haha/g  replace 'bad' or 'good' by 'haha'


#global action #ex
:[range]g[!]/{pattern}/[cmd][motion]
cmd co t=copy m=move p=print ...

^   start of line
$   end of line
\s* zero or more space characters

del lines containing "string"
:g/old/                 list all lines matching 'old'
:w my.txt               write all lines to file 'my.txt'
:%s/ *$//g	            Delete all white spaces
:g/^$/d                 delete all lines empty
:g/string/d	            Delete all lines containing "string"
:g!/string/d	        Delete all lines containing which didn’t contain "string"
:v/string/d	            Delete all lines containing which didn’t contain "string"

:s/Bill/Steve/	        Replace the first occurence of Bill by Steve in current line
:s/Bill/Steve/g	        Replace Bill by Steve in current line
:%s/Bill/Steve/g	    Replace Bill by Steve in all the file
:%s/^M//g	            Delete DOS carriage returns (^M)
:%s/\r/\r/g	            Transform DOS carriage returns in returns
:%s#<[^>]\+>##g	        Delete HTML tags but keeps text
:%s/^\(.*\)\n\1$/\1/	Delete lines which appears twice

```

---

<h1 id="bash">bash</h1>

```

:!cmd_bash_terminal

:e file.txt     -     open file in current buffer
:q              -     close buffer or thoát khỏi vim
:qa             -     quit vim not save
:q!             -     bắt buộc thoát không cần lưu ! = NOT save
:w              -     lưu file
:w!             -     bắt buộc ghi file (ghi đè)
:wq             -     lưu xong thoát
:1,10 w myfile          save line 1 to 10 in myfile
:1,10 w >> myfile       append line 1 to 10 to myfile
:r myfile               insert content of myfile to current line of buffer
:234 myfile             insert content of myfile under line23

```

---

<h1 id="buffer-ex">buffer-ex</h1>

```

:n {bufname}     -     new buffer with bufname
:b {bufname}     -     switch to bufname
:[range]bd       -     Close current buffer
:bd {b1 b2 b2}   -     Close b1 b2 b3 

:ls<cr>     list buffers set(1 2 3 4 5 ...)
[b  /  :bp<cr>     prev buffer
]b  /  :bn<cr>     next buffer
:1b<cr>     select buffer 1
:2b<cr>     select buffer 2

:b#                       -     Last buffer visited, actual # sign
:b1                       -     Switch to buffer #1
:1b                       -     switch to buffer 1
:bm                       -     Switch to next modified buffer

:sb 1             -     Open buffer #1 in a split
:sb {bufname}     -     Open buffer bufname in a split
:sbn              -     Open next buffer in a split
:sbp              -     Open previous buffer in a split
:sba              -     Open all buffers in split windows


:[range]r[ead] {filename}
range = 0 dau file, $ cuoi file, int= int line
:r file.txt                -     Insert content file.txt below the cursor in current buffer.
:0r file.txt               -     Insert content file.txt above the first line.
:5r file.txt               -     insert content file above line5
:$r file                   -     insert content file after last line
:r!sed n 2,8p file.txt     -     Insert lines 2 to 8 of file.txt below the cursor.
:r !ls                     -     Insert a directory listing below the cursor

gf          =     open in the same window ("goto file")
<c-w>f      =     open in a new window (Ctrl-w f)
<c-w>gf     =     open in a new tab (Ctrl-w gf)
gx          =     open deffault webbrowser

:x                     -     Exit vim but write only when changes have been made.
:qa                    -     exit all open files in current vim session


:sav file.txt          -     save current buffer as a new ile file.txt.
:up[date] file.txt     -     like :w but only save when the buffer has been motips

:jumps       -     jump list
:changes     -     change list


:args file1 file2 file3     -     group file{1,2,3} into :args
:args **/*.js **/*.css      -     group js va css file
** recursive directories
* current 1 directory

all files in a tree=directory
:argdo normal @a            -     run macros a for group buffer :args
:argdo write                -     saved all buffers
:wa[ll]                     -     = :argdo write
:argdo update               -     save all buffers
con :first :last :next :previous

#all buffers
:bufdo %s/pattern/replace/ge | update

#all windows
:windo %s/pattern/replace/ge   


left         -     right
previous     -     next
up           -     down
top          -     bottom

backward     -     forward
front        -     behind

first       -     last
above       -     below|under
undo        -     redo
earlier     -     later


`      :     backtick
'      :     apostrophe
"      :     double quotes
()     :     parentheses
{}     :     braces
[]     :     square brackets
<>     :     angle brackets
!      :     exclamation
:      :     colon
;      :     semicolon
#      :     number sign - hash
%      :     percent
&      :     ampersand
•      :     asterisk - dau nhan
+      :     plus
-      :     minus = dau tru
,      :     comma
.      :     full stop = dot
=      :     equal sign
<      :     less than
>      :     greater than
?      :     question mark
@      :     at sign
/      :     slash
\      :     backslash
|      :     pipe
^      :     caret
_      :     underscore
~      :     tilde


/\v"[^"]+"<cr>           -     select content in "" lay lun ""
/\v"\zs[^"]+\ze"<cr>     -     select content in ""


#history #list #show
q?     -     open window list history searching prev word
q/     -     open window list history searching next word
q:     -     open window list history command: vim

```

--- 

<h1 id="motion">motion</h1>

```

cursor movement [count=int][operator]
h     -     move cursor left
j     -     move cursor down
k     -     move cursor up
l     -     move cursor right

h     -     move to top of screen
m     -     move to middle of screen
l     -     move to bottom of screen

b      -     prev start word
w      -     next start word

ge     -     prev end word
e      -     next end word

*      -     select all word giong nhau
*      -     next hightlight text

sentences : la 1 cau stop boi dot<.>

( / )         jumpto prev / next sentences
{ / }         jumpto prev / next line empty giua cac paragraph=1 doan=nhieu sentencess


%      -     jumpto () or {}, [], ... close braket / close braket
[[  /  ]]       -       jumpto prev / next func or class
[m  /  ]m       -       giong tren nhung jumpto lun subfunc or subclass lun 


"jump to line   [count=int]gg
5gg        -     go to line 5
ctrl g     -     xem thông tin dòng hiện tại

0   /   $       start / end of line
^   /   g_      first / last word of line

gm         -     jumpto center screen
gM         -     jumpto center line

F{letter}     -     jump to backward letter on line
f{letter}     -     jump to forward letter on line

T{letter}     -     jumpto char backward letter
t{letter}     -     jumpto char forward letter

,               -     repeat previous f, t, f or t
noremap / ;     -     repeat next f, t, f or t


#screen #croll
move screen
zz         -     center cursor on screen
ctrl y     -     move screen up one line (without moving cursor)
ctrl e     -     move screen down one line (without moving cursor)

ctrl u     -     move back 1/2 a screen
ctrl d     -     move forward 1/2 a screen

ctrl b     -     move back one full screen
ctrl f     -     move forward one full screen

```

---

                            normal mode:

```

# paste
P            -     paste front=prev=before of cursor
p            -     paste behind=next=after of cursor
ctrl r "     -     paste tu y=command for ex mode
ctrl r 0     -     paste tu y=command for insert ode


[recursive=int]{y d c}[int]{motion}
y     -     copy
d     -     cut
c     -     cut and insert

motion:
    sentences 1 doan text cach nhau boi dau dot .

k j h l

b       prev word, cursor first char
w       next word, cursor first char

ge      prev word, cursor end char
e       next word, cursor end char

(       prev paragraph
)       next paragraph

0       start line (= ^)
$       end line (= g_)

gg      start file
G       end file

O       new line above=prev, swap ve insert mode
O       new line below=next, swap ve insert mode
I       insert mode start line
A       insert mode end line

R       replace more chars
r       replace 1 char


%            -     to ) } ]
dd cc yy     -     cut change copy 1 line
gN           -     vselect to prev match word
gn           -     vselect to next match word


x                       :     cut 1 letter
cl         -     cut 1 char, after into insert mode
s          -     == cl
dw          cut current char to end=right 1 word
db          cut prev char to start=left 1 word
d18         cut 18 line tiep theo
d18|       -     cut toi screen column 18
dd         -     cut 1 dong
d3d        -     cut 3 dong
3d3d       -     cut 9 line
ddp        -     swap current line with below line= cut current line paste below cursor
d3w        -     cut 3 word(tinh tu vi tri cursor)
dw         -
dfp        -     cut den khi gap 'p' cut lun 'p' thi stop on line
dtp        -     cut den khi gap 'p' thi stop NO cut 'p'
d/haha     -     cut den khi gap 'haha' thi stop all lines
ggdG       -     gg=nhau ve dau file, dG cut den cuoi file
J          -     join down line with current line

y10h        copy 10 prev chars
y10l        copy 10 next chars
y10k        copy 10 line above
y10j        copy 10 line below


yy          -     copy 1 line
dd          -     cut 1 line
cc          -     cut all words current line into insert mode
c enter     -     = cc
dgg / dG        cut to start file / end file

y^      -     copy to word start line non blank
yg_     -     copy to word end line non blank
y0      -     copy to start line
y$      -     copy to end line
y%      -     copy to end  ] } )

dj      -     cut 2 line, current line and down line
dk      -     cut 2 line, curernt line and up line
y c     -     tuong tu


d?{word}     -     cut to word left cursor
d/{word}     -     cut ot word right cursor
c y          -     cung vay

#tips
<esc>==jj
[int]i{letter}jj

8i<cr>jj     =     add 8 line
20i-jj       =     add 20 '-'
d18|         =     cut words to column 18
c y          =     giong voi cut=d

ctrl a     =     int+1
ctrl x     =     int-1

```

---

<h1 id="easymotion">easymotion</h1>

```

N       jumpto prev match char
n       jumpto next match char

*       highlight quick words(ca file) at current cursor (== ctrl d of sublime text)
*       next words da highlight


/[words]        searching words full file 
;f              search 1 char full file
s               search 2 char full file , cursor ngay char 
t               search 2 char, from current cursor to end file


;L              jump to mark line
;w              jump to 2 letter mark words

;h              jump to word left curosr tren 1 line
;l              jump to word right cursor tren 1 line 
;j              jump to word down curosr tren nhieu lines
;k              jump to word up cursor tren nhieu lines

```

---

<h1 id="searching">searching</h1>

```

{d,c,y}{i,a,t,f}
{d,c,y}{t,f}{char}
t gap letter thi stop
f lay lun letter roi stop

dt,         cut to gap , thi stop, van o normal mode
ct,         cut to gap , thi stop, swap to insert mode
yt,         copy to gap , thi stop van o normal mode
#cut #change #visual more words
del=cut=d change=c visual=v deu giong nhau
ytp     -     copy letters to khi gap 'p'
yt,     -     copy letters to khi gap ',' roi into insert mode
yt;     -     copy letters to khi gap ';' thi stop

#copysentence #copyparagraph
copy    cut=d  change=c  visual=v cung vay 
yis     -     copy 1 cau=sentence
yas     -     copy 1 cau=sentence them spaces step sentence 2
ct<    change toi <

#more sentences= nhieu cau, nen dung a thay cho i
cis         change het 1 cau = sentence 
ya3s        copy 3 cau
ca4s        change 4 cau
da4s        cut 4 cau

yip     -     copy above lines, gap line-empty stop
yap     -     giong yip, them + \n

#searching #y/ #c/
#copytoword #changetoword #cuttoword
giong use voi searching
d/{words}   cut letters den khi gap 'words'
c/{words}   change letters den khi gap 'words' roi into insert mode
y/{words}   copy letters den khi gap 'words' thi stop

```

---

<h1 id="targets">targets.vim</h1>

```

#change-content
operator d cut text nhung van o normal mode
operator c cut-change text nhung into insertmode add them text

{operator}{i|I|a|A}{text-objects}
hay dung nhat la i a

{operator}{i|I|a|A}[l|n]{text-object}
them [l|n] dung cho text-object left=prev=above next=right=below


int{operator}{i|I|a|A}[l|n]{text-object}

pair text objects: use b thay the cho () [] {}

quote text objects: use q thay the cho '' "" ``


separator text object:
   , . ; : + - = ~ _ * # / | \ & $ 

#content #pair
operator:
    v = visual mode = selete text
    d       cut text,van o normal mode
    c       cut-change text, swap to insert mode, 

{I|i|a|A}:
    I = all context KO co space
    i = giong I, them spaces before-after content, tru cap pair
    a = giong i, them cap pair of content
    A = giong a, them more spaces 

cursor into content moi dung i) 2i) or 3i) .... co count=int


{v,d,c,y}{I,i,a,A}{b,q,t,>}
I lay content

I( I) I{ I} IB I[ I] I< > It 
a ( b (    abccontent     )      wordhaha ) e 
      ||   |        |    ||     |
      ||   ----Ib----    ||     |
      ||                 ||     |
      ||-------ib--------||     |
      |                   |     |
      |--------ab---------|     |
      |                         |
      |--------Ab---------------|

cib         jumpto block change content
ciq         jumpto quote change content
cit         jumpto tag-html change content


a lay lun pair
a( a) a{ a} aB a[ a] a< > at

a ( b ( cccccccc ) d ) e
  │   └─── ab ───┘   │
  └────── 2ab ───────┘

` it dung A `
A lay lun pair nhung cursor o pair right spaces
A( A) A{ A} AB A[ A] A< > At

a ( b ( cccccccc ) d ) e
  │   └─── Ab ────┘   │
  └────── 2Ab ────────┘a


argument=a
{I i a A}{a}
Ia      lay context argument one
a , b ( contentx , d ) e
        └─ Ia ─┘

ia      lay context them spaces
a , b ( contentx , d ) e
       └── ia ──┘

aa      lay contentx to spaces content2
a , b ( contentx ,      content2 ) e
        └─── aa ──-----|

Aa      lay tu ( to spaces content2
a , b ( contentx ,      content2 ) e
      └─── Aa ────-----|


n == next,      {I, i, a, A} hay dung {i,a}
{d,y,c}{i,a}{b, q, t, >}
{d,y,c}{i,a}{l,n}{b, q, t, >}
int=count{d,y,c}{i,a}{l,n}{b, q, t, >}

# {  content1   } [   cotennt 2 ] (   content 3    )
#cursor at block1
cib        jumpto block change content1
cinb       jumpto block change content2
2cinb      jumpto block change content3

l == prev
#cursor at block3
cib        jumpto block change content1
cilb       jumpto block change content2
2cilb      jumpto block change content3

```

---

<h1 id="vim-surround">vim-surround</h1> 

```

#add-block
#pair
cut, replace pair = {} [] '' "" ``, ...
text object = iw 

ds{pair}                cut pair
cs[{                    change ngoac [] thanh ngoac {}

#addpair
ys{text-object}{pair}    add pair
ysw"                    add "" wrap    current cursor to end 1 word
ys3w"                   add "" wrap    current cursor to end 3 word
ys4w"                   add "" wrap    current cursor to end 4 word

nen dung a thay cho i
ysa{motion}
ys{count=int}a{motion}          nhieu words
ysaw"                   add "" wrap     ia = word
ys3aw"                  add "" wrap     3 word
ys3aw(                  add () wrap     3 word
ys3awb                  add () wrap     3 word

tp = tag <p>
tdiv = tag <div>
timg = tag <img>
ys3awtp + enter         add <p> wrap     3 word

ysas"                   add "" wrap    1 cau = sentence (ngan cach boi dot=.)
ysas>                   add <> wrap    1 cau = sentence (ngan cach boi dot=.)
ysasb                   add () wrap    1 cau = sentence (ngan cach boi dot=.)
ysas( === ysasb

ysastp + enter          add <p> wrap    1 cau = sentence (ngan cach boi dot=.)


yss"                    add "" wrap     1 line
yssb                    add () wrap     1 line
yss(    ====    yysb

rieng tag phai press them <enter>
ysstp + enter           add tag=<p> wrap     1 line
ysstdiv + enter         add tag=<div> wrap     1 line

#changepair
# cs{pair_old}{pair_new}
cs(*            change () thanh **
csb*            change () thanh **
csb>            change () thanh <>, khi change phai dung >close
csbtp           change () thanh tag <p>
cs(tp           change () thanh tag <p>

#cutpair
dsb             cut=del ()
dsq             cut=del "" 
dst             cut=del tag html
ds<             cut=del <>


dung thong cursor inside 'dung'
ysa mapto g@a
ysi mapto g@i
yss mapto 1g@g_

into visual mode
veee     -     select 3 word
S"       -     add "" for 3 word

```

---

<h1 id="title-case">title case</h1>

```

#uppercase #lowercase #titlecase #invertcase
~               invert case 1 char
10~             invert case 10 char

;gzz            titlecase 1 line
g~~             invertcase 1 line
guu             lowercase 1 line
gUU             uppercase 1 line
Vu              lowercase 1 line
VU              uppercase 1 line

;gzw           title 1 word
;gz3w          title 3 word

;gzib          title in pair
;gzi'          title in ''
;gza'          title in ''

;gz(          at cursor, title words to end line above
;gz)          at cursor, title words to end file below



gu{motion}
g{u U}[i a]{w s p ( ' " < t ...}

gu{searching}{letter}
gu{t f}{letter}

gu<cr>  lowercase 2 line
gU<cr>  upeercase 2 line

#invertcase
g~<cr>   invert case letters 2 line
g~~      invert case letters to end 1 line

guw      make a word lowercase
gUw      make a word uppercase
>g       tab word

```

---

<h1 id="tabular">tabular.vim</h1>

```

#tab #tabalign
align text=can chinh text
:'<,'>   visual mode
r{int}   right
c(int)   center
l(int)   left

:'<,'>Tabularize /|        -     cang chinh theo |
:'<,'>Tabularize /=        -     cang chinh theo =
:'<,'>Tabularize /:/r0     -     cang chinh theo : right 0 space
:'<,'>Tabularize /:\zs     -     theo space ignoze :  content right, align left for content

```

---

<h1 id="emmet">emmet</h1>

```

nho press tab khi end
ctrl y ,     -     vao tag: emmet
p[class="name"]{tao la content}                <p class="name">tao la content</p>
.box                                            <div class="box"></div>     
#box                                            <div id="box"></div>
p+p                                             <p></p><p></p>
p>a      tag p chua tag a                       <p><a></a></p>
ul>li*5         ul chua 5 li

ul>li.item$*5
<ul>
    <li class="item1"></li>
    <li class="item2"></li>
    <li class="item3"></li>
    <li class="item4"></li>
    <li class="item5"></li>
</ul>

div+div>p>span+em^bq
<div></div>
<div>
    <p><span></span><em></em></p>
    <blockquote></blockquote>
</div>

^       jumpto 1 level
^^      jumpto 2 level
div+div>p>span+em^^bq
<div></div>
<div>
    <p><span></span><em></em></p>
</div>
<blockquote></blockquote>

more ....
https://docs.emmet.io/cheat-sheet/

```

---

<h1 id="undo">undo u</h1>

```

:ea[rlier] {int}{s m h d f}
f là buffer file
:ea 3d      undo 3day before

#redo <c-y> 
:lat[er] {int}{s m h d f}
:lat 3h     redo 3hour after

```

---


<h1 id="text-object">text-object</h1>

```

{operator}{a|i}{text-object}

text-object
w   for word
s   for sentence
', ", `     for quotes
p   for paragraph
b (or (, )) for block surrounded by (),
B (or {, }) for block surrounded by {}
<, > for a block surrounded by <>
[, ] for a block surrounded by []
t for tag.

```

---


<h1 id="insert-mode">insert mode</h1>

```

ctrl j         -     new line
ctrl h         -     del prev letter
ctrl w         -     del prev word
ctrl u         -     del to start line
ctrl t         -     indent (move right) line one shiftwidth during insert mode
ctrl d         -     de indent (move left) line one shiftwidth during insert mode

ctrl r x       -     insert the contents of register x
ctrl r "       -     insert the last yank/delete
ctrl r %       -     insert file name
ctrl r /       -     insert last search term
ctrl r :       -     insert last command line
ctrl r =@a     -     run macros a


autocomplete
Ctrl x Ctrl l     -     insert a whole line
Ctrl x Ctrl n     -     insert a text from current file
Ctrl x Ctrl i     -     insert a text from included files
Ctrl x Ctrl f     -     insert a file name
Ctrl x Ctrl ]     -     insert from tags (must have tags)
Ctrl x Ctrl o     -     insert from omnicompletion. Filetype specific.
ctrl n and ctrl p khong can ctrl x

jumpto
Ctrl-o zz    " center window
Ctrl-o H/M/L " jump to top/middle/bottom window
Ctrl-o 'a    " jump to mark 'a'

reapting text
Ctrl-o 100ihello
Ctrl-o 10Ahello

execute command line
Ctrl-o !! curl https://google.com
Ctrl-o !! pwd

gwip     -     format paragraph textwidth=79
gqip     -     format paragraph textwidth=79


cgn [text can thay the] exit
n   next to word
.   repeat

```

---


<h1 id="indent">visual commands, indent</h1>

```

#indent text #tab

ctrl v     -     visual block mode
V          -     select 1 line
gv-
o-

>.         -     two tab indent text
y          -     yank (copy) marked text
d          -     cut marked text
~          -     switch case
u          -     change marked text to lowercase
U          -     change marked text to uppercase

#indent
<<         -     indent text left
>>         -     indent text right
>%      - indent a block with () or {} (cursor on brace)
>ib     - indent inner block with ()
>at     - indent a block with <> tags
3==     - re-indent 3 lines
=%      - re-indent a block with () or {} (cursor on brace)
=iB     - re-indent inner block with {}
gg=G    - re-indent all line buffer
]p      - paste and adjust indent to current line

:3,5le 4        indent left space=4 from line3 to line5

```

---

<h1 id="register">register</h1>

```

set names de luu lai cac command cut and copy de dung lai
"xyy     -     save context cua command=yy toi name=x
"xp      -     paste context cua name=x
"wdd     -     save context cua command=dd toi name=w
"wp      -     paste context cua name=w

:reg[isters]     -     show registers content
"xyy             -     yank into register x
"xp              -     paste contents of register x
"+y              -     yank into the system clipboard register
"+p              -     paste from the system clipboard register

"0p       -     uu tien paste tu y=command ignoze c d
qAgUq     -     append gU vao register name=a dung upper A

     0 - last yank
     " - unnamed register, last delete or yank
     % - current file name
     # - alternate file name
     * - clipboard contents (X11 primary)
     + - clipboard contents (X11 clipboard)
     / - last search pattern
     : - ex command-line
     . - last inserted text
     - - last small (less than a line) delete
     = - expression register
     _ - black hole register

```

<h1 id="macros">macros</h1>

```

luu lai vim-code va dung lai no
nen dung omap: 0 $ w e b
tranh dung h j k l -> vi khong biet do lai cua line 
^]     =    press <esc>

qa                               -     record macro a name
motion,d c y p  ... sau do q
q                                -     stop=quit=save recording macro
@a                               -     run macro a name
@@                               -     run lai macros

recursive
100@v           run 100 lines

:[range]norm[al] [cmd=@v, motion, ...]
:6,16norm @v     -     run macros name=v for line6 to line16
:10,$norm @v     -     run macros for line10 to end line of file
:%norm @v        -     run all lines
:'<'>norm @v     -     run for select context

```

---

<h1 id="mark">marks and positions</h1>

```

set name= 1 vi tri nao do, de jump to

m{a-zA-Z}     |     set current position for mark A
`a            |     jump to position co name=a
:marks        |     list of marks


:delmarks a        |     delete mark a
:delmarks a-d      |     delete marks a, b, c, d
:delmarks abxy     |     delete marks a, b, x, y
:delmarks aA       |     delete marks a, A
:delmarks!         |     delete all lowercase marks for the current buffer (a-z)


y`a          -     yank text to position of mark A
`0           -     go to the position where Vim was previously exited
`"           -     go to the position when last editing this file
`.           -     go to the position of the last change in this file
``           -     go to the position left the last jump
:ju[mps]     -     list of jumps
Ctrl i       -     go to newer position in jump list
Ctrl o       -     go to older position in jump list
:changes     -     list of changes
g,           -     go to newer position in change list
g;           -     go to older position in change list
Ctrl  ]      -     jump to the tag under cursor

```

---

<h1 id="vim-signature">vim-signature</h1>

```

marks: place, toggle and display

mx           Toggle mark 'x' and display it in the leftmost column

dmx          Remove mark 'x' where x is a-zA-Z
m-           Delete all marks from the current line
m<Space>     Delete all marks from the current buffer
m<BS>        Remove all markers
m<S-[0-9]>   Remove all markers of the same type

m,           Place the next available mark
m.           If no mark on line, place the next available mark. Otherwise, remove (first) existing mark.
]`           Jump to next mark
[`           Jump to prev mark
]'           Jump to start of next line containing a mark
['           Jump to start of prev line containing a mark
`]           Jump by alphabetical order to next mark
`[           Jump by alphabetical order to prev mark
']           Jump by alphabetical order to start of next line having a mark
'[           Jump by alphabetical order to start of prev line having a mark
m/           Open location list and display marks from current buffer

m[0-9]       Toggle the corresponding marker !@#$%^&*()
]-           Jump to next line having a marker of the same type
[-           Jump to prev line having a marker of the same type
]=           Jump to next line having a marker of any type
[=           Jump to prev line having a marker of any type
m?           Open location list and display markers from current buffer

```

---

<h1 id="tmux">tmux</h1>

```

#copy #paste
#tmux-yank
bind = ctrl a

#chi can lam 1 lan
bind I      auto restore session when start os linux

bind:       :comand

quick: mouse drag select text + y  => copy text
copy mode: <prefix> [
v  vao visual mode selete text
y copy

bind <cr>     -     into copy mode
bind e        -     open ~/.tmux.config.local
bind r        -     reload config
ctrl+l        -     clear

#paste #copy
bind y         -     copy to system clipboard
bind b         -     list paste buffer
<prefix> p     -     paste=put
<prefix> P     -     show list copy

ctrl shift v | ctrl y     -     paste tu os into terminal

15p save 1 lan
nen save lan dau
bind <c-s>      saved
bind <c-r>      restore

bind s      show list session
bind w      show list session expand, show window


# login 
tmux a
tmux at
tmux attach
tmux attach-session

# restore session_name
tmux a[ttach] -t {session_name}
tmux a -t index_or_name-session


#new #session #window
bind ctrl c     =     create a new session
bind c          =     new a window
bind -          =     create a horizontal pane=buffer
bind _          =     create a vertical pane=buffer

#del session
tmux kill-session -t index_or_name_session

#close
bind &     -     close window
bind x     -     Xoá panel=buffer if ch con 1 panel thi close window lun

#searching
bind f         =     searching windows

bind {a, <tab>}      next tab
bind a + a           next tab

#rename
bind $     rename the current session
bind ,     rename the current window

bind d     detach from the current session

0 to 9 select windows 0 through 9
bind ctrl+h     -     prev window
bind ctrl+l     -     next window
bind tab        -     last window
bind 1          select window=1
bind 3          select window=3
bind:swap-window -t 3           swap window to index=3

bind <     -     swap panes
bind >     -     swap panes

bind muoi ten-jumpto pane

bind (     -     jump to prev session
bind )     -     jump to next session

#panes
bind q     show pane numbers
bind o     toggle between panes
bind {     swap with prev pane
bind }     swap with next pane
bind !     break the pane out of the window

#new
tmux
tmux new
tmux new -s [session_name]


#copycat
bind /     =     searching
        string
        [0-9]+

bind ctrl f     =     simple file search
bind ctrl g     =     jumping over git status files (best used after git status command)
bind alt h      =     jumping over SHA-1/SHA-256 hashes (best used after git log command)
bind ctrl u     =     url search (http, ftp and git urls)
bind ctrl d     =     number search (mnemonic d, as digit)
bind alt i      =     ip address search


copy mode = bind <cr>
o           =     "open" a highlighted selection
Ctrl o      =     open a highlighted selection with the $EDITOR
Shift s     =     search the highlighted selection directly inside a search engine (defaults to google).

#panel
#split #horizontally
ctrl a "

#vertically
ctrl a %

```

---

<h1 id="terminal">terminal</h1>

```

#motion 
bind ctrl a     -     begging line
ctrl e          -     end line
ctrl b          -     Go left (back) one character.
ctrl f          -     Go right (forward) one character
alt b           -     Go left (back) one word.
alt f           -     Go right (forward) one word.

ctrl p      -     prev cmd history
ctrl n      -     next cmd history
ctrl r      -     searching cmd history
ctrl g      -     exit searching history mode
ctrl o      -     ctrl g


#cut
ctrl w      -     cut word left cursor
alt d       -     cut word right lay lun letter tai current cursordelete

ctrl u      -     cut 1 line left cursor
ctrl k      -     cut current right cursor to end line
ctrl y      -     paste


ctrl d      -     del character right cursor


#case
alt u       -     upper
alt l       -     lower
alt c       -     capitalize

#swap
alt t       -     swap word with prev word
ctrl t      -     swap letter with prev letter

```
