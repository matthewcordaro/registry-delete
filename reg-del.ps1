$key = "Path\to\your\registry\key"
$backupPath = "C:\Backup\registry_backup.reg"

# Check if the registry key exists
if (Test-Path -Path $key) {
    # Backup the registry key
    reg export $key $backupPath
    Write-Host "Registry key '$key' has been backed up to '$backupPath'."

    # Prompt user to save undo file
    $saveUndo = Read-Host "Do you want to save an undo file? (Y/N)"
    if ($saveUndo -eq "Y") {
        $undoFilePath = Read-Host "Enter the path to save the undo file (e.g., C:\Backup\undo.reg):"

        # Create undo registry file
        $undoContent = @"
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\Your\Registry\Key]
"@
        $undoContent += "`r`n"
        $undoContent += "`r`n"
        $undoContent += "`r`n"
        $undoContent += "@"

        Set-Content -Path $undoFilePath -Value $undoContent
        Write-Host "Undo file saved to '$undoFilePath'."
    }
    else {
        Write-Host "Undo file not saved."
    }

    # Perform the deletion
    $confirmDelete = Read-Host "Do you want to delete the registry key now? (Y/N)"
    if ($confirmDelete -eq "Y") {
        # Delete the registry key
        Remove-Item -Path $key -Recurse -Force
        Write-Host "Registry key '$key' has been deleted."
    }
    else {
        Write-Host "Deletion canceled."
    }
}
else {
    Write-Host "Registry key '$key' not found."
}
