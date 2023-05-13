# Registry Key Deletion and Undo PowerShell Script

This PowerShell script allows you to search for a specific registry key and delete it. It also provides an option to create an undo file for later restoration of the deleted registry key.

## NOTICE: AI GENERATED 
*This script is AI geneated*
**AT THE MOMENT, IT HAS NOT BEEN TESTED!**

## Prerequisites

- Windows operating system
- PowerShell (version 3.0 or later)

## Usage

1. Open a PowerShell command prompt or PowerShell ISE.
2. Navigate to the directory where the script file is located.
3. Modify the script to set the desired registry key path (`$key` variable) and backup file path (`$backupPath` variable).
4. Run the script using the following command:

   ```powershell
   PS C:\Scripts> .\DeleteRegistryKey.ps1

5. Follow the prompts presented by the script:
      - Confirm if you want to save an undo file.
      - If yes, provide the path to save the undo file.
      - Confirm if you want to delete the registry key.
      - If yes, the script will delete the registry key.
6. The script will display appropriate messages throughout the process, such as successful backup, undo file saved, and completion of the deletion (if applicable).


## Notes
- This script assumes that you have sufficient permissions to access and modify registry keys.
- Please exercise caution when deleting registry keys, as it can have unintended consequences on your system.
- Always ensure that you have a backup of important registry keys before making any changes.

## License
This script is licensed under the MIT License.
