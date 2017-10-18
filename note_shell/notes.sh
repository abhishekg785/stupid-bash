# bash script that acts if it's like your not taking service
# you can save notes using notes < your note >

# commands
# notes 'your note' => will save to default file
# notes -file '' 'your note' will save to a file you have given -> in default directory
# notes -file '<filename>' -location '<location>' 'your note' will save to a file you have given -> in default directory 

NOTES_SAVE_DIR=$HOME/notes.md

notes() {
  echo $1 >> $NOTES_SAVE_DIR
}

shownotes() {
  cat $NOTES_SAVE_DIR
}
