# Prairie Theme for VSCode

A minimal light theme designed to reduce eye fatigue for VSCode users. This theme is a port of the [Prairie Neovim theme](https://github.com/darwinfroese/prairie).

## Philosophy

According to the Canadian Center for Occupational Health and Safety, the focus points for different colors are at different distances in the eyes, and seeing different colors simultaneously can cause eye fatigue. Prairie was designed with this in mind, focusing on having all colors on the "redder" half of the spectrum to reduce fatigue while minimizing blue colors.

Blue colors are used primarily for comments, which typically require a shift in thinking when reading code. The theme uses an incredibly minimal color palette with very few stylistic ways of denoting syntax groups.

## Installation

### Manual Installation

1. Copy the `vscode` directory to your VSCode extensions folder:
   - Windows: `%USERPROFILE%\.vscode\extensions\prairie-theme`
   - macOS: `~/.vscode/extensions/prairie-theme`
   - Linux: `~/.vscode/extensions/prairie-theme`

2. Reload VSCode

3. Open the Command Palette (Cmd+Shift+P or Ctrl+Shift+P)

4. Select "Preferences: Color Theme"

5. Choose "Prairie"

### Development Installation

If you want to test or modify the theme:

1. Clone this repository
2. Copy the `extras/vscode` directory to `~/.vscode/extensions/prairie-theme`
3. Reload VSCode
4. Select the theme from the command palette

## Color Palette

- Background: #fff4cc (warm light yellow)
- Foreground: #190d00 (dark brown)
- Comments: #006aad (blue)
- Strings: #3b7b31 (green)
- Keywords: bold italic
- Functions: bold

## License

MIT
