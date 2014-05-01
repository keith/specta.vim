# specta.vim

Syntax highlighting for the [specta](https://github.com/petejkim/specta)
& [expecta](https://github.com/petejkim/expecta) Objective-C test
frameworks.

## Installation

### With [Vundle](https://github.com/gmarik/vundle)

Add:

```
Bundle 'Keithbsmiley/specta.vim'
```

To your `.vimrc` and run `BundleInstall` from within vim or `vim
+BundleInstall +qall` from the command line

### With [Pathogen](https://github.com/tpope/vim-pathogen)

```
cd ~/.vim/bundle
git clone https://github.com/Keithbsmiley/specta.vim.git
```

### Setup

You can set the syntax for a file manually with `set syntax=specta` I
recommend you do this in your `.vimrc` detecting your typical test
filename.

```
autocmd BufNewFile,BufRead *Test.m setlocal syntax=specta foldmethod=syntax
```

This changes the `syntax` to `specta` whenever a file named `*Test.m` is
read or written (written sets the syntax correctly for newly created
files) You may also have to set the default `filetype` to Objective-C. I
use something like:

```
autocmd BufNewFile,BufRead *.h,*.m,*.pch setlocal filetype=objc
```

You can also install
[cocoa.vim](https://github.com/msanders/cocoa.vim/) which adds some
Objective-C highlighting features (automatically used by specta.vim if
it's accessible).

This plugin also provides mappings for
[vim-endwise](https://github.com/tpope/vim-endwise).

### Known issues

If you find any other issues or have any recommendations on how to solve
these let me know via issues/pull requests
