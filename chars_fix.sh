MAX_CHARS=$1

# If there is no MASTODON_DIR given then it simply sets it to cwd
test "x$2" = "x" -a -z $MASTODON_DIR && MASTODON_DIR=.

# Patch the compose_form.js file
file1=${MASTODON_DIR%%/}/app/javascript/mastodon/features/compose/components/compose_form.js
sed -e "s/length(fulltext) > [0-9]*/length(fulltext) > $MAX_CHARS/ ; s/length(text) > [0-9]*/length(text) > $MAX_CHARS/ ; s/CharacterCounter max={[0-9]*}/CharacterCounter max={$MAX_CHARS}/" $file1

# Patch the status_length_validator.rb file
file2=${MASTODON_DIR%%/}/app/validators/status_length_validator.rb
sed -e "s/MAX_CHARS = [0-9]*/MAX_CHARS = $MAX_CHARS/" $file2
