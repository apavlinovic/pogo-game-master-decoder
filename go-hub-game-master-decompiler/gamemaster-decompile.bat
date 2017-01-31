@echo off

SET "pogo_protos_path=.\dependencies\POGOProtos-master\src\"**
SET "pogo_protos_target=POGOProtos.Networking.Responses.DownloadItemTemplatesResponse"**
SET "pogo_protos_template=.\dependencies\POGOProtos-master\src\POGOProtos\Networking\Responses\DownloadItemTemplatesResponse.proto"**

.\dependencies\protoc-3.1.0-win32\bin\protoc.exe --proto_path=%pogo_protos_path% --decode=%pogo_protos_target%  %pogo_protos_template%  < .\game-master-files\%1. | clip

@echo ==================================================== 
@echo "                                                  "
@echo "               `;-.        ___,                   "
@echo "                `.`\_...._/`.-`                   "
@echo "                  \        /      ,               "
@echo "                  /()   () \    .' `-._           "
@echo "                 /)  .    ()\  /   _.'            "
@echo "                 \  -'-     ,; '. <               "
@echo "                  ;.__     ,;×   > \              "
@echo "                 / ,    / ,  ×.-'.-'              "
@echo "                (_/    (_/ ,;×.<`                 "
@echo "                  \    ,     ;-`                  "
@echo "                   >   \    /                     "
@echo "                  (_,-'`> .'                      "
@echo "                       (_,'                       "	 
@echo "                                                  "
@echo "          POGO GAME MASTER DECODER                "
@echo "                                                  "
@echo ====================================================
@echo * 
@echo * Using GAME_MASTER: %1
@echo * 
@echo ====================================================
@echo * PoGO Game Master decoding is done. Paste it to a 
@echo * text editor of your choice. We suggest Sublime.
@echo * 
@echo[*
@echo * Yours truly,
@echo[*
@echo * Pokemon GO Hub
@echo * https://pokemongohub.net/
@echo ====================================================