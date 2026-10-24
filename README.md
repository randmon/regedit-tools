# Regedit Tools

This repo contains small Windows registry snippets that add shortcut actions to File Explorer so you can open a folder directly in your preferred tool.

## What is included

- `open-with-intellij/` — adds an `Open with IntelliJ` option to folder context menus.
- `open-with-claude/` — adds an `Open with Claude` option to folder context menus.
- `open-with-rider/` — adds an `Open with Rider` option to folder context menus.

Each folder contains both:

- a regular folder entry (right-click a directory)
- a background entry (right-click empty space inside a folder)

## How to use it

1. Open the `.reg` file you want to use.
2. Replace the placeholder paths with your real install locations. Don't forget to escape backslashes in the paths (e.g., `C:\\Program Files\\...`).
3. Save the file.
4. Double-click it to import into the Windows registry.
5. Open File Explorer and right-click a folder to use the new command.


## Notes

- These are registry templates; they do not work until the paths are edited and the file is imported.
- Back up your registry before making changes.
- You can remove the `icon` entries if you do not want custom icons.
- Restarting Explorer is sometimes helpful after adding a new menu item.
