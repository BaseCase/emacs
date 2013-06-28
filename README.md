cjb's Emacs setup
=================

My personal Emacs configuration.

### Setting up ###

1. `mv .emacs ~`
1. Make sure you have these fonts installed: http://font.ubuntu.com/
(or pick your own)


### Flyspell setup ###

If on a Mac, you need Homebrew.

1. `brew remove aspell`
1. `brew install aspell --lang=en`


### JavaScript setup ###

I use the mooz fork of js2-mode by default, which is slow if you don't compile it. Once in Emacs, do this:

`M-x byte-compile-file emacs/lib/js2-mode/js2-mode.el`

### a test todo list

- [ ] do this thing
- [ ] then do this thing next
