@REM DIsables as wake armed devices because I want my computer to stay asleep

FOR /F "tokens=* USEBACKQ" %%F IN (`powercfg -devicequery wake_armed`) DO (
    powercfg /devicedisablewake "%%F"
)