# Espanso Shortcode Manager 
A small interactive TUI to manage Espanso shortcodes on **Linux**.

Overview
--------

`span` is a lightweight interactive script that helps you add, list, and remove Espanso shortcodes from your Espanso `span.yml` matches file. It's designed to be simple, POSIX-compatible, and safe to use from a terminal.

Requirements
------------

- A Linux distro. (It won't work on windows or mac os)
- Espanso installed and configured: https://espanso.org/

Install
-------

Run the command below, or install the `span` package manually.

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/pptoolbox/span/main/install.sh)"
```

Usage
-----

Run the script from a terminal:

```bash
span
```

When launched you'll see a simple menu to:
- Add new shortcode (trigger + replacement)
- View all shortcodes
- Delete a shortcode

Emoji Support
-----

`span` comes with a pre-loaded emoji shortcode library (`emoji.yml`) that provides quick access to hundreds of emojis using text triggers. Instead of copying/pasting emojis, you can use simple text shortcuts.

**Emoji triggers start with a dot (`.`)**

For example:
- `.happy` → 😀
- `.love` → ❤️
- `.100` → 💯
- `.thumbsup` → 👍
- `.party` → 🎉
- `.rocket` → 🚀
- `.thinking` → 🤔
- `.fire` → 🔥
- `.star` → ⭐

You can also use aliases for the same emoji:
- `.joy` or `.tears` → 😂 (same emoji, different trigger)
- `.grinning` or `.happy` → 😀
- `.+1` or `.thumbsup` → 👍

The emoji library includes triggers for:
- **Faces & emotions**: happy, sad, angry, confused, thinking, etc.
- **Gestures & hands**: thumbsup, clap, pray, handshake, etc.
- **Symbols & objects**: fire, star, heart, diamond, etc.
- **Activities & nature**: party, rocket, tada, etc.

To use an emoji in a text editor or application that supports Espanso:
1. Type the emoji trigger (e.g., `.happy`)
2. Press the configured Espanso activation key (usually spacebar)
3. The emoji appears instantly

Behavior notes
--------------

- When adding a shortcode the script will initialize `matches: []` if no matches are present.
- Deleting a shortcode removes the matching entry and will restore `matches: []` when no matches remain.
- The script edits your Espanso YAML in-place; consider backing up `span.yml` before bulk changes.

Examples
--------

Add a new shortcode (interactive):

```bash
span
# choose: 1) Add new shortcode
# trigger: email
# replacement: you@example.com
```

License
-------

This project is licensed under the [MIT License](LICENSE).

Contributing
------------

Issues and pull requests are welcome. Please include a clear description of the change and a short test or reproduction steps for behavior changes.

Author
------

PP Toolbox (2025)

