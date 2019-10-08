
## WindowsPowerShellとPowerShell(Core)について

PowerShellには、大きく分けてWindowsPowerShellとPowerShell Coreの二つがあります。
WindowsPowerShellは名前にWindowsを冠しているようにWindowsに依存したPowerShellです。
もう少し具体的に言うと、.NET Frameworkに依存しているPowerShell。
Windowsの奥ゆかしい機能が使えたりする反面、.NET Framework環境でしか動作しません。

一方のPowerShell Coreはマルチプラットフォーム向けのPowerShellです。
Windows/Linux/macOS環境での動作が公式でサポートされています。
PowerShell Coreは.NET Coreというマルチプラットフォーム向けの.NETランタイムで動きます。