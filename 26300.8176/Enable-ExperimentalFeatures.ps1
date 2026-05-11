param(
    [string]$ViveToolPath = "C:\ViveTool\ViVeTool.exe"
)

. "$PSScriptRoot\ViVe-Helpers.ps1" -ViveToolPath $ViveToolPath

# ===== EXPERIMENTAL ENABLE PACK =====
# These are more experimental / AI / perf / UX changes.

[int[]]$ExperimentalFeatureIds = @(
    43572692, # SearchBoxOnTaskbarGleamHover
    54846942, # VelTest_ControlledByProxy_DBD_External
    54846952, # VelTest_ControlledByProxy_DBD_External_Child_DBD_External_Parent
    53267615, # (Disabled override) - candidate for experimentation
    53858120  # Example Service experiment (check behavior before adding more)
)

foreach ($id in $ExperimentalFeatureIds) {
    Invoke-ViVeTool -Command enable -Id $id
}