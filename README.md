# Mastodon Max Character Fix
This is a simple shell script that will change the number of maximum characters to whatever you want.

## How to Use
You should have some kind of shell language like bash, which you already have if you are on linux or mac.

Simply run the shell script `sh char_fix.sh MAX_CHARS MASTODON_DIR`

### Step 1: Run the Script

You will need to tell it your mastodon directory and the number of characters you want. So let's say my mastodon directory is /home/MyUsername/mastodon and the number of characters I want is 2000 then I simply:

```
sh char_fix.sh 2000 /home/MyUsername/mastodon
```

If you leave the MASTODON_DIR option empty then the script will use your current directory.

### Step 2: Recompile Mastodon
After you edit the file, you will need to recompile the program, so you go into your mastodon folder and do `RAILS_ENV=production bundle exec rails assets:precompile` to recompile everything.

### Step 3: Restart the Server
Until you restart the server, you won't notice any difference. You probably have a systemd service file, so you simply do `sudo systemctl restart mastodon-web` and it should restart it. 

If you do not have systemd, then you might have it in your /etc/init.d folder, but you will have to find out what it is called and then to `sudo /etc/init.d/mastodon.sh restart` or something like that.

## Todo
- Fix for windows users, assuming it doesnt work for them.
