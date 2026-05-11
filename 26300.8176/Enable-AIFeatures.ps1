param(
    [string]$ViveToolPath = "C:\ViveTool\ViVeTool.exe"
)

. "$PSScriptRoot\ViVe-Helpers.ps1" -ViveToolPath $ViveToolPath

[int[]]$AIFeatureIds = @(
    38613007, # FileExplorerInsights
    37337272, # SmartWorkflows
    42865047, # CloudBackupRestoreSvc
    42529603, # Mercury_App_Backup_Shared
    41984359, # MercuryADEPTAppBackup
    43469028, # MercuryADEPTDeviceMetaDataBackup
    44140851, # MercuryADEPTUserIntentBackup
    53188129  # ConfigureRecallOC
)

foreach ($id in $AIFeatureIds) {
    Invoke-ViVeTool -Command enable -Id $id
}