# vimwikihabits
Adding habit tracking capabilities to the diary feature provided in the vimwiki plugin (https://github.com/vimwiki/vimwiki) 


## Prerequisites ##

This plugin is designed to be used to augment the vimwiki plugin so I suggest you grab that if you want to use this :)

## Installation ##

### Vimplug ###

Add:

``Plug 'Rasengangstarr/vimwikihabits'``

To your .vimrc

between

```call plug#begin()```

and

```call plug#end()```

then in vim run :PlugInstall

### Vundle ###
Add:

``Plug 'Rasengangstarr/vimwikihabits'``

To your .vimrc

between

```call vundle#begin()```

and

```call vundle#end()```

then in vim run :PlugInstall

## Usage ##
_This assumes that you have some knowlege of vimwiki's diary feature. If you don't, there's plenty online about it._

First, navigate to your vimwiki diary directory, and create a new file called habits.vim. Inside it, enter your habits as a new line seperated list:

![screenshot-1635963144](https://user-images.githubusercontent.com/55991814/140168709-115ec3bf-deec-43f7-881e-6a9116c3ca55.png)

Save this file, then enter one of your diary entries, (or create one using the vimwiki diary shortcuts:

![screenshot-1635963379](https://user-images.githubusercontent.com/55991814/140168909-e519049b-e07f-40f7-a4e0-c25ca76114cb.png)

Press <esc> :VimWikiHabitsInsert

  ![screenshot-1635963519](https://user-images.githubusercontent.com/55991814/140169280-450967f9-3752-4e0b-8149-54b691b99a4c.png)

  
This should paste your habits as a todo list in the diary entry - check or uncheck them by pressing <ctrl>+<space> over the boxes.
  
Then you can simply press <esc> :VimWikiHabitsGenerate to view the habit tracker at the bottom of the screen
  
  ![screenshot-1635963495](https://user-images.githubusercontent.com/55991814/140169336-5a9a10fc-1ce7-4d1b-9e26-1df1dca88114.png)
  
  Happy tracking!
