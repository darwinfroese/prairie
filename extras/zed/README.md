# Prairie Theme for Zed

A minimal, eye-strain reducing light theme for Zed editor that matches the Prairie colorscheme for Neovim.

## Installation

### Option 1: Theme Override (Recommended)

1. Open Zed settings (`Cmd+,` on macOS, `Ctrl+,` on Linux/Windows)
2. Copy the contents of `theme_override.json`
3. Paste it into your settings.json file
4. Set your theme to "Atelier Heath Light" in the theme selector
5. The Prairie colors will automatically override the base theme

### Option 2: Full Theme Installation

1. Open the Command Palette (`Cmd+Shift+P` on macOS, `Ctrl+Shift+P` on Linux/Windows)
2. Run "zed: open themes folder"
3. Copy `prairie.json` to the themes folder
4. Restart Zed
5. Select "Prairie" from the theme dropdown

Manual theme folder locations:
- **macOS**: `~/.config/zed/themes/`
- **Linux**: `~/.config/zed/themes/`
- **Windows**: `%APPDATA%\Zed\themes\`

## Features

- Light theme optimized for reduced eye fatigue
- Minimal color palette focusing on warmer tones
- Blue reserved for comments to create mental shifts
- Consistent with Prairie Neovim colorscheme
- Proper contrast ratios for accessibility

## Philosophy

Prairie is designed based on research from the Canadian Center for Occupational Health and Safety, which shows that different colors focus at different distances in the eyes. By using colors primarily from the "redder" half of the spectrum, Prairie reduces eye fatigue while maintaining excellent readability.