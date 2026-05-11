param(
    [string]$ViveToolPath = "C:\ViveTool\ViVeTool.exe"
)

. "$PSScriptRoot\ViVe-Helpers.ps1" -ViveToolPath $ViveToolPath

# ===== SAFE ENABLE PACK =====
# Add only things you’re comfortable with. Initial set based on your dump.

[int[]]$SafeFeatureIds = @(
    38937525,  # FindInStart (Start menu search in grid) - currently Disabled
    40851068,  # SnapTimerAndVisualUpdateExperiment - Snap visuals
    42187503,  # VelocityPrefetchTestFeature - app prefetch perf
    53472520   # FileExplorer_BlackFlashDuplicateWindow - Explorer visual fix
)

foreach ($id in $SafeFeatureIds) {
    Invoke-ViVeTool -Command enable -Id $id
}