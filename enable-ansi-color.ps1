param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$TargetExe,
    
    [Parameter(ValueFromRemainingArguments=$true)]
    [string[]]$TargetArgs
)

# Resolve the executable path to bypass PowerShell's variable lookup quirk
$ResolvedPath = Resolve-Path -ErrorAction SilentlyContinue $TargetExe
if ($ResolvedPath) {
    $TargetExe = $ResolvedPath.Path
}

# Execute the target program and redirect to Write-Host
if ($TargetArgs.Count -gt 0) {
    & $TargetExe @TargetArgs | Write-Host
} else {
    & $TargetExe | Write-Host
}
