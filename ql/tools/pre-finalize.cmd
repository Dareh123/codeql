@echo off

type NUL && "%CODEQL_DIST%\codeql" database index-files ^
    --include=**/qlpack.yml ^
    --include-extension=.qlref ^
    --size-limit=5m ^
    --language yaml ^
    -- ^
    "%CODEQL_EXTRACTOR_QL_WIP_DATABASE%"

exit /b %ERRORLEVEL%
