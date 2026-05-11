param(
    [string]$ViveToolPath = "C:\ViveTool\ViVeTool.exe"
)

. "$PSScriptRoot\ViVe-Helpers.ps1" -ViveToolPath $ViveToolPath

[int[]]$ExperimentalIds = @(
    43572692, # SearchBoxOnTaskbarGleamHover
    54846942, # VelTest_ControlledByProxy_DBD_External
    54846952, # VelTest_ControlledByProxy_DBD_External_Child
    53267615, # Disabled override candidate
    53858120  # Service experiment
)

foreach ($id in $ExperimentalIds) {
    Invoke-ViVeReset -Id $id
}
