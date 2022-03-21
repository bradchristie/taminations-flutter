REM flutter build windows
REM flutter pub run msix:create
REM mkdir c:\temp\unpack
REM makeappx unpack /d c:\temp\unpack /p p:\FlutterProjects\taminations\build\windows\runner\Release\taminations.msix
REM edit manifest file
REM makeappx pack /d c:\temp\unpack /p p:\FlutterProjects\taminations\build\windows\runner\Release\taminations.msix
REM rmdir /s/q c:\temp\unpack
makeappx.exe bundle  /f mapping.txt /p taminations.msixbundle /bv 1.6.36.0