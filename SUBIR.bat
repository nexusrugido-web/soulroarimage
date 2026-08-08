@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo.
echo ==========================================
echo    SOUL ROAR - SUBIR IMAGENS
echo ==========================================
echo.

if not exist "videos" mkdir videos
if not exist "masters" mkdir masters

echo [1/3] Renomeando por data de modificacao...
echo.

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0renomear.ps1"

if errorlevel 1 (
    echo.
    echo ERRO ao renomear. Nada foi enviado.
    pause
    exit /b
)

echo.
echo [2/3] Verificando novidades...
git add .

git diff --cached --quiet
if %errorlevel%==0 (
    echo.
    echo Nada novo para subir. Tudo ja esta no GitHub.
    echo.
    pause
    exit /b
)

git diff --cached --name-only
echo.

echo [3/3] Enviando para o GitHub...
set /p MSG="Descricao (enter para usar a data): "
if "%MSG%"=="" set MSG=upload %date%

git commit -m "%MSG%"
git push

echo.
if %errorlevel%==0 (
    echo ==========================================
    echo    PRONTO. Imagens no ar.
    echo    Aguarde 1-2 min para o cache do GitHub.
    echo ==========================================
) else (
    echo ==========================================
    echo    ERRO no push. Confira a internet ou
    echo    o login do Git e tente de novo.
    echo ==========================================
)
echo.
pause
