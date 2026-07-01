# Prairie Theme Plugin for JetBrains IDEs

A complete theme plugin for JetBrains IDEs featuring warm prairie colors and excellent readability.

## Building the Plugin

1. Make sure you have Java 11+ installed
2. Navigate to this directory:
   ```bash
   cd prairie-theme-plugin
   ```
3. Build the plugin:
   ```bash
   ./gradlew buildPlugin
   ```
4. The plugin JAR will be created in `build/distributions/prairie-theme-plugin-1.0.0.zip`

## Installing from Disk

1. Open your JetBrains IDE
2. Go to **Settings** → **Plugins**
3. Click the gear icon → **Install Plugin from Disk...**
4. Select the generated `prairie-theme-plugin-1.0.0.zip` file
5. Restart the IDE
6. Go to **Settings** → **Appearance & Behavior** → **Appearance**
7. Select **Prairie** from the Theme dropdown

## Development

The plugin structure:
- `src/main/resources/META-INF/plugin.xml` - Plugin descriptor
- `src/main/resources/themes/prairie.theme.json` - UI theme definition
- `src/main/resources/themes/prairie.icls` - Editor color scheme
- `build.gradle` - Build configuration

## Features

- Complete IDE theming (UI + editor)
- Light theme with warm prairie color palette
- Excellent contrast for readability
- Consistent styling throughout the IDE
- Git integration colors