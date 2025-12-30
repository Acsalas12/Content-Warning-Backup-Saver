@echo off
setlocal enabledelayedexpansion

start "" "CW_Manager.exe"

if exist "game_path.txt" (
    set /p GAME_EXE=<"game_path.txt"

        if exist "!GAME_EXE!" (
        echo Starting game from: !GAME_EXE!
        start "" "!GAME_EXE!"
    ) else (
        echo Error: Game executable not found at the path in game_path.txt
        pause
    )
) else (
    echo Error: game_path.txt not found!
    pause
)

exit