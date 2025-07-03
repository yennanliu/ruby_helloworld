
# 🛠️ rbenv Not Switching Ruby — Fix Guide

Thanks — it looks like `rbenv` isn’t correctly setting your Ruby version, even though you ran:

```bash
rbenv global 3.3.0
```

Let’s walk through a quick fix:

---

## ✅ Step-by-step Fix for `rbenv` Not Switching Ruby

### 1. Check Ruby version installed with `rbenv`

Run:

```bash
rbenv versions
```

Make sure `3.3.0` appears in the list. You should see something like:

```
  system
* 3.3.0 (set by /Users/yourname/.rbenv/version)
```

If you don’t see `3.3.0`, install it:

```bash
rbenv install 3.3.0
```

---

### 2. Ensure your shell is properly initialized

Check that `~/.zshrc` or `~/.bash_profile` includes this line:

```bash
eval "$(rbenv init -)"
```

Then reload your shell config:

```bash
source ~/.zshrc   # or source ~/.bash_profile
```

---

### 3. Force rehash and re-apply

```bash
rbenv rehash
rbenv global 3.3.0
exec "$SHELL"    # restart your shell session
```

Then run:

```bash
ruby -v
```

You should now see:

```
ruby 3.3.0p...
```

---

### 4. (Optional) Check path to Ruby

You can verify Ruby is coming from `rbenv` by:

```bash
which ruby
```

Expected result:

```
/Users/<yourname>/.rbenv/shims/ruby
```

If it’s still `/usr/bin/ruby`, then your shell config isn’t loading `rbenv` correctly.

---

## 🧪 Debugging Help

Let me know the output of:

```bash
rbenv versions
which ruby
echo $PATH | tr ':' '\n' | grep rbenv
```

I can guide further based on that.
