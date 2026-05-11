param(
    [string]$ViveToolPath = "C:\ViveTool\ViVeTool.exe"
)

. "$PSScriptRoot\ViVe-Helpers.ps1" -ViveToolPath $ViveToolPath

[int[]]$SafeIds = @(
    38937525, # FindInStart
    40851068, # SnapTimerAndVisualUpdateExperiment
    42187503, # VelocityPrefetchTestFeature
    53472520  # FileExplorer_BlackFlashDuplicateWindow
)

foreach ($id in $SafeIds) {
    Invoke-ViVeReset -Id $id
} 