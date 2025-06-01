Prairie
===

A simple, minimal colorscheme for neovim designed for reducing eye fatigue for light mode users.

## Installation

### Requirements
Praire is built using the [lush](https://github.com/rktjmp/lush.nvim) NeoVim plugin and depends on the lush NeoVim plugin as a result.

### Lazy

```
{
    "darwinfroese/prairie",
    version = false,
    lazy = false,
    priority = 1000,
},
```

## Why
According to the [Canadian Center for Occupational Health and Safety](https://www.ccohs.ca/oshanswers/ergonomics/office/vdtcolor.html#section-2-hdr)
the focus points for different colors are at different distances in the eyes and to see different colors at the same time
puts fatigue on our eyes. Prairie was designed with this in mind, focusing on having all colors on the "redder" half of the
spectrum so that the fatigue is reduced as well as reducing the amount of blue colors.

Blue colors are used, but they are used typically for `comments` since I view comments as something that is requires a shift
in thinking anyways. When I write code I tend to be reading comments, or reading code, but rarely do I actually read both (ie.
I skim over inline comments without reading them unless I am looking for them). This lets blue colors be used to when you're both
physically and mentally ready to "shift" what colors your eyes are receiving.

Lastly, Prairie uses an incredibly minimal color palette and has very few stylistic ways of denoting syntax groups. This is
intentional and will not be changed because I have never actually found styling syntax groups, beyond the very basic styling
that Prairie has, useful.

## Screenshots

Below are some screenshots in action.

### Terminal

[!screenshots/terminal.png]

### Neovim

[!screenshots/neovim.png]

