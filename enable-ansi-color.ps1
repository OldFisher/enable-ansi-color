$CmdText = [Environment]::GetEnvironmentVariable("CMD_TEXT", "Process")

cmd.exe /c `"`"$CmdText`"`" | Write-Host

$ExitCode = if ($null -ne $LASTEXITCODE) { $LASTEXITCODE } else { 0 }

exit $ExitCode