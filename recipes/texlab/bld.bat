cargo build --release || goto :error

:: this can fail, but copying might still work
md "%PREFIX%\Scripts"

copy "target\release\%PKG_NAME%.exe" "%PREFIX%\Scripts" || goto :error

goto :EOF

:error
echo FAIL Building %PKG_NAME% with error #%errorlevel%.
exit /b %errorlevel%
