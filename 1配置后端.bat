@echo off
echo ���ڴ������Ե�...
:: ����OLLAMA_HOST������������֤
setx OLLAMA_HOST ":11434"
if %ERRORLEVEL% neq 0 (
    echo ����OLLAMA_HOSTʧ�ܣ����ù���ԱȨ�����С�
    pause
    exit /b
)

:: ����OLLAMA_ORIGINS������������֤
setx OLLAMA_ORIGINS "*"
if %ERRORLEVEL% neq 0 (
    echo ����OLLAMA_ORIGINSʧ�ܣ����ù���ԱȨ�����С�
    pause
    exit /b
)
echo.
:: ���Խ�����ؽ���
taskkill /F /IM "ollama*.exe" >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo û���ҵ���Ҫ������ollama*.exe���򣬲����ⲻӰ�죬��������...
)
echo.
:: ʹ��%USERPROFILE%������������λOllamaӦ�ó����λ��
set "OLLAMA_PATH=%USERPROFILE%\AppData\Local\Programs\Ollama\ollama app.exe"
echo.
if exist "%OLLAMA_PATH%" (
    start "" "%OLLAMA_PATH%"
    echo �ѳ�������Ollama��������ȷ�����������С�
) else (
    echo δ���ҵ�OllamaӦ�ó����λ�ã�%OLLAMA_PATH%
)
echo.
echo ������ɣ����ԹرնԻ����ˡ�
pause