# Mastodon Max Character Fix
This is a simple shell script that will change the number of maximum characters to whatever you want.

## How to Use
You should have some kind of shell language like bash, which you already have if you are on linux or mac.

Simply run the shell script `./char_fix.sh MAX_CHARS MASTODON_DIR

You will need to tell it your mastodon directory and the number of characters you want. So let's say my mastodon directory is /home/MyUsername/mastodon and the number of characters I want is 2000 then I simply:

```
./char_fix.sh 2000 /home/MyUsername/mastodon
```

If you leave the MASTODON_DIR option empty then the script will use your current directory.

## Todo
- Fix for windows users, assuming it doesnt work for them.
