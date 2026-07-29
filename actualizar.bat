@echo off
title Actualizador Tablero GEO RENACER CARACAS
echo ========================================================
echo 1. Procesando archivos Excel en geo-renacer-caracas2...
echo ========================================================

:: Se ubica en la carpeta de los Excel y ejecuta el script de Python
cd /d "C:\Users\USUARIO\Desktop\geo-renacer-caracas2"
python unificar_campamentos.py

echo.
echo ========================================================
echo 2. Copiando matriz de datos a la carpeta web...
echo ========================================================

:: Copia la matriz generada hacia la carpeta donde está la página web
copy /y "MATRIZ_MAESTRA_DECISIONES_Trazabilidad.xlsx" "C:\Users\USUARIO\Desktop\geo-renacer-caracas"

echo.
echo ========================================================
echo 3. Publicando cambios en GitHub Pages...
echo ========================================================

:: Se mueve a la carpeta de la página web donde está configurado Git
cd /d "C:\Users\USUARIO\Desktop\geo-renacer-caracas"

git add .
git commit -m "Actualizacion automatica del tablero"
git push origin main

echo.
echo ========================================================
echo ¡Proceso completado con exito!
echo El tablero se actualizara en la web en unos instantes.
echo ========================================================
pause