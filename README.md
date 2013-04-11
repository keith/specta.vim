# specta.vim

Syntax highlighting for the [specta](https://github.com/petejkim/specta)/[expecta](https://github.com/petejkim/expecta) Objective-C test frameworks.


## Installation

### With [Vundle](https://github.com/gmarik/vundle)

Add:

```
Bundle 'Keithbsmiley/specta.vim'
```

To your `.vimrc` and run `BundleInstall` from within vim or `vim +BundleInstall +qall` from the command line

### With [Pathogen](https://github.com/tpope/vim-pathogen)

```
cd ~/.vim/bundle
git clone https://github.com/Keithbsmiley/specta.vim.git
```

### Setup

You can set the syntax for a file manually with `set syntax=specta`
I recommend you do this in your `.vimrc` detecting your typical test filename, for example in [mine](https://github.com/Keithbsmiley/dotfiles/blob/master/vim/vimrc) I use:

```
autocmd BufReadPost,BufWrite *Test.m set filetype=specta
```

This changes the `filetype` to `specta` whenever a file named `*Test.m` is read or written (written sets the syntax correctly for newly created files)

I also recommend you install [cocoa.vim](https://github.com/msanders/cocoa.vim/) which adds some Objective-C highlighting features (automatically used by specta.vim if installed).

### Known issues

- Right parens `)` at the end of `describe` blocks show up as errors
- Highlighting inside other blocks doesn't work (this is because cocoa.vim messes with the block highlighting behavior)

If you find any other issues or have any recommendations on how to solve these let me know via issues/pull requests

