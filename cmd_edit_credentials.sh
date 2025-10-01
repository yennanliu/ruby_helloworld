#Decode credentials to a temporary file:

# V1
eval "$(rbenv init -)"
source ~/.zshrc
# edit with sublime, can change to other IDE
EDITOR="subl" rails credentials:edit



# V2
# Make sure use ruby 3
eval "$(rbenv init -)"
source ~/.zshrc

# Decode credentials to a file you can edit in your IDE
EDITOR="cat" rails credentials:show > /tmp/credentials_decrypted.yml

Edit the file in your IDE:

# Open in your preferred IDE/editor
code /tmp/credentials_decrypted.yml      # VSCode
cursor /tmp/credentials_decrypted.yml    # Cursor
open -a "Sublime Text" /tmp/credentials_decrypted.yml  # Sublime
# or just open it manually in your IDE

Re-encode after modification:

# Make sure use ruby 3
eval "$(rbenv init -)"
source ~/.zshrc

# Option 1: Use a helper script to write the file back
EDITOR="cp /tmp/credentials_decrypted.yml" rails credentials:edit

# Option 2: Use tee to pipe the content back
cat /tmp/credentials_decrypted.yml | EDITOR="tee" rails credentials:edit

# Option 3: Use a shell script wrapper
EDITOR="/bin/bash -c 'cat /tmp/credentials_decrypted.yml > \$1'" rails credentials:edit

Clean up:

# Remove the temporary decrypted file (IMPORTANT for security!)
rm /tmp/credentials_decrypted.yml

Recommended workflow:

# 1. Decode
EDITOR="cat" rails credentials:show > /tmp/credentials_decrypted.yml

# 2. Edit in your IDE (add the Twilio credentials)
code /tmp/credentials_decrypted.yml

# 3. Re-encode (after saving your changes)
cat /tmp/credentials_decrypted.yml | EDITOR="tee" rails credentials:edit

# 4. Clean up
rm /tmp/credentials_decrypted.yml
