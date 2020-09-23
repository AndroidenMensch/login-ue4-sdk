:: Need add target/source parameters for usability
SET target=..\..\..\..\..\..\XsollaLogin
SET source=..\..\..\..\..

:: Make full copy of useful for Project directories/files
for %%a in ("Source" "Content" "Config") do (xcopy /I /S /Y "%source%\%%~a" "%target%\%%~a")
xcopy %source%\*.uproject %target% /Y

:: Make full copy of useful for Plugin directories/files for Plugin
for %%a in ("Source" "Content" "Config" "Documentation" "Extras" "Resources") do (xcopy /I /S /Y "%source%\Plugins\store-ue4-sdk\%%~a" "%target%\Plugins\login-ue4-sdk\%%~a")

:: Remove Store directories/files"
rmdir "%target%\Plugins\login-ue4-sdk\Content\Store" /S /Q
rmdir "%target%\Plugins\login-ue4-sdk\Source\XsollaStore" /S /Q

@PAUSE