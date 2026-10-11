param (
  [Parameter(Mandatory=$false)]
  [DateTime]
  $theDate = (Get-Date)
)

$ErrorActionPreference = "Stop"

function EnsurePath($target) {
  $targetPath = "./$target/";
  if (!(Test-Path -Path $targetPath)) {
    mkdir $targetPath
  } 
  Push-Location $targetPath
}

Push-Location "./content"  -StackName Src
Push-Location "./posts"
Write-Output "$(Get-Location)"

EnsurePath($theDate.Year);
EnsurePath($theDate.Month);
EnsurePath($theDate.Day);

$content = (Get-Content ../../../../../template.md)
$content = $content.Replace("2026-10-01",$theDate.ToString("yyyy-MM-dd"))
$content = $content.Replace("2026/10/01/cover.jpg",$theDate.ToString("yyyy/MM/dd")  + "/cover.jpg")

Set-Content -Path "./new-story.md" -Value $content 

Pop-Location -StackName Src

Push-Location "./content"  -StackName Src
Push-Location "./images/posts"

EnsurePath($date.Year);
EnsurePath($date.Month);
EnsurePath($date.Day);

Pop-Location -StackName Src