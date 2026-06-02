@echo off
title ?? Animated Desktop AI Assistant
cls
echo  (o_o)  System initialized. Your desktop AI assistant is online and ready!

:loop
echo.
set /p user_input="?? (?_?) Type your command (or type 'exit' to quit): "

if /i "%user_input%"=="exit" goto shutdown
if /i "%user_input%"=="quit" goto shutdown

if /i "%user_input%"=="time" (
    for /f "tokens=1-2 delims=:" %%a in ("%time%") do set current_time=%%a:%%b
    echo ?? (^_^) Robot: The current time is %current_time%.
    goto loop
)

if /i "%user_input%"=="date" (
    echo ?? (^_^) Robot: Today is %date%.
    goto loop
)

:: Free AI Processing Core Visual Animation
echo ?? (?????) Thinking...
for /f "delims=" %%a in ('powershell -Command "$body = @{ model='meta-llama/llama-3-8b-instruct:free'; messages=@(@{ role='system'; content='You are a brief assistant robot. Answer in 1 short sentence.' }, @{ role='user'; content='%user_input%' }) } | ConvertTo-Json; $res = Invoke-RestMethod -Uri 'https://openrouter.ai' -Method Post -ContentType 'application/json' -Body $body -TimeoutSec 6; $res.choices.message.content"') do set ai_reply=%%a

echo ?? (o_o) Robot: %ai_reply%
goto loop

:shutdown
echo ?? (x_x) Shutting down the assistant system. Goodbye!
pause
exit
