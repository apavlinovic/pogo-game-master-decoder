# pogo-game-master-decoder
A copy &amp; paste decoder for Pokémon GO

# How to use

1. Clone / download this repository 

2. Open the folder on your computer

  2.1 Position your Windows Explorer so you see **gamemaster-decompile.bat**

3. Open up Command Prompt in this folder

  3.1 You can open Command Prompt easily by holding Shift and Right Clicking in the empty space in the folder

  3.2 The context menu should show "Open command window here"

4. Paste your extracted GAME_MASTER file in the "game-master-files" folder

5. Use the following command to run the decoder, replacing the NAME_OF_YOUR_GAME_MASTER with the actual name of the file:

``` batch
gamemaster-decompile.bat NAME_OF_YOUR_GAME_MASTER
```

There is no need to write the whole path to the GAME_MASTER file, just it's name. Here's a more concrete example:

``` batch
gamemaster-decompile.bat 000001597FF747A8_GAME_MASTER
```

Your output should look like this:

![GAME_MASTER decoder output](https://i.redditmedia.com/YgnzC7G3tZWol0RbGQsHPm5QXkeK9YwBQW68WLdA8LY.png?w=450&s=2e0add0ec3890addde7a5b683ed7da58)
