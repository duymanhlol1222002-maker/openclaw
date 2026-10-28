# StudyClaw Mini launcher for Windows PowerShell
$ErrorActionPreference = "Stop"

Write-Host "=== StudyClaw Mini ===" -ForegroundColor Cyan

if (-not (Get-Command openclaw -ErrorAction SilentlyContinue)) {
    Write-Host "Chua tim thay lenh openclaw." -ForegroundColor Yellow
    Write-Host "Hay cai OpenClaw va hoan tat onboarding truoc."
    Write-Host "Tai lieu chinh thuc: https://docs.openclaw.ai/install"
    exit 1
}

Write-Host "Kiem tra OpenClaw..."
openclaw --version
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host "Kiem tra agent StudyClaw..."
$agentList = openclaw agents list 2>&1 | Out-String
if ($LASTEXITCODE -ne 0) {
    Write-Host $agentList
    Write-Host "Khong the doc danh sach agent. Chay 'openclaw doctor' de kiem tra."
    exit 1
}

if ($agentList -notmatch '(?i)studyclaw') {
    Write-Host "Tao agent StudyClaw..."
    openclaw agents add studyclaw --workspace "$PSScriptRoot"
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Tao agent that bai. Hay kiem tra loi phia tren." -ForegroundColor Red
        exit $LASTEXITCODE
    }
} else {
    Write-Host "Da tim thay agent StudyClaw; bo qua buoc tao."
}

Write-Host "Gui cau hoi thu..."
openclaw agent --agent studyclaw --message "Xin chao! Hay gioi thieu ngan gon 2 chuc nang cua ban: tom tat tai lieu va giai thich kien thuc."
exit $LASTEXITCODE
