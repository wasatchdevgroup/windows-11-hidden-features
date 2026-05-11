param(
    [string]$ViveToolPath = "C:\ViveTool\ViVeTool.exe"
)

. "$PSScriptRoot\ViVe-Helpers.ps1" -ViveToolPath $ViveToolPath

# Union of all IDs you enabled across packs
[int[]]$AllTouchedIds = @(
    # Safe pack
    38937525,
    40851068,
    42187503,
    53472520,

    # Experimental pack
    43572692,
    54846942,
    54846952,
    53267615,
    53858120,

    # AI pack
    38613007,
    37337272,
    42865047,
    42529603,
    41984359,
    43469028,
    44140851,
    53188129
)

foreach ($id in $AllTouchedIds) {
    Invoke-ViVeTool -Command disable -Id $id
}