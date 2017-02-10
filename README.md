# pogo-game-master-decoder
A copy &amp; paste decoder for Pokémon GO

# How to use (Windows)

1. Clone / download this repository 

2. Open the folder on your computer

  2.1 Open the folder **go-hub-game-master-decompiler**
  2.2 Windows: Position your Windows Explorer so you see **gamemaster-decompile.bat**

      Mac OS X: same as above, but **gamemaster-decompile.sh**

3a. Windows: Open up Command Prompt in this folder

  3.1 You can open Command Prompt easily by holding Shift and Right Clicking in the empty space in the folder

  3.2 The context menu should show "Open command window here"

3b. Mac OS X: Open up Terminal in this folder

  3.1 Open up Terminal, type in "cd " and drag&drop any file from the folder, remove the file name and press enter. This should go to the directory.


4. Paste your extracted GAME_MASTER file in the "game-master-files" folder

5. Windows: Use the following command to run the decoder, replacing the NAME_OF_YOUR_GAME_MASTER with the actual name of the file:

``` batch
gamemaster-decompile.bat NAME_OF_YOUR_GAME_MASTER
```

   Mac OS X: just run 
``` batch
gamemaster-decompile.sh
```

   The script takes the latest Game master file from the directory.

6. The decoded GAME_MASTER is now in your **clipboard**

7. Paste the decoded GAME_MASTER in any text editor, Word, Google Doc. We recommend Sublime Text, Atom or Notepad++.

## Example

There is no need to write the whole path to the GAME_MASTER file, just it's name. Here's a more concrete example:

``` batch
gamemaster-decompile.bat 000001597FF747A8_GAME_MASTER
```

Your output should look like this:

![GAME_MASTER decoder output](https://i.redditmedia.com/YgnzC7G3tZWol0RbGQsHPm5QXkeK9YwBQW68WLdA8LY.png?w=450&s=2e0add0ec3890addde7a5b683ed7da58)

## F.A.Q.

The batch script wont damage your PC or write anything on it. The only place where anything is written is clipboard. You need Windows for this. Or a Mac ;)

If the script doesn't run on OS X, make sure it's executable (chmod 755 gamemaster-decompile.sh in terminal)