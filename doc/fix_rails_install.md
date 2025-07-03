
# 🛠️ Rails Not Found on macOS — Fix Guide

Ah, this is a classic **macOS + system Ruby issue**. Here’s why it happens and how to fix it.

---

## ❓ Why This Happens

When you run:

```bash
sudo gem install rails
```

It installs Rails using **macOS system Ruby**, but your shell still points to a different Ruby environment, likely managed by `rbenv`, `rvm`, or the system path itself.

So even though Rails is installed, the `rails` command isn’t found because it’s not in your current `$PATH`.

---

## ✅ Fix Options

### 🔧 Option 1: Use `rbenv` Properly (**Recommended**)

1. **Initialize `rbenv` in your shell config**:

    ```bash
    # In ~/.zshrc or ~/.bash_profile:
    eval "$(rbenv init -)"
    ```

    Then reload:

    ```bash
    source ~/.zshrc   # or source ~/.bash_profile
    ```

2. **Set and verify Ruby version**:

    ```bash
    rbenv global 3.3.0
    ruby -v        # Should say ruby 3.3.0...
    ```

3. **Reinstall Rails (without sudo)**:

    ```bash
    gem install rails
    ```

4. **Run rehash and verify**:

    ```bash
    rbenv rehash
    rails -v
    ```

✅ Now `rails` should work!

---

### 🔧 Option 2: Check If Rails Installed with `sudo` Is on Your `$PATH`

1. Run:

    ```bash
    which rails
    ```

    If it returns nothing, the `rails` binary installed via `sudo` isn’t in your shell’s `$PATH`.

2. Try finding the path:

    ```bash
    sudo find /Library/Ruby/Gems /System/Library/Frameworks -name rails
    ```

    If you find it under something like:

    ```
    /Library/Ruby/Gems/2.6.0/bin/rails
    ```

3. You can run it directly:

    ```bash
    /Library/Ruby/Gems/2.6.0/bin/rails -v
    ```

4. Or add it to your `PATH`:

    ```bash
    export PATH="/Library/Ruby/Gems/2.6.0/bin:$PATH"
    ```

    Then add that to your `~/.zshrc` and reload:

    ```bash
    source ~/.zshrc
    ```

---

## ✅ Best Practice Summary

| Setup        | Command to use     | Notes                           |
|--------------|--------------------|---------------------------------|
| Using rbenv  | `gem install`      | Don’t use `sudo`, clean setup   |
| System Ruby  | `sudo gem install` | Risky, less flexible            |

---

Let me know which option you’d like to go with, and I can walk you through it!
