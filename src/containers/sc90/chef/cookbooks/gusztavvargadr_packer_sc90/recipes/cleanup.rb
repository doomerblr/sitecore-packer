# clean-up temp folder to save space
gusztavvargadr_windows_powershell_script_elevated 'Clearing temporary files' do
  code <<-EOH
    @(
        "c:\\tmp",
    ) | % {
            if(Test-Path $_) {
                Write-Host "Removing $_"
                try {
                  Takeown /d Y /R /f $_
                  Icacls $_ /GRANT:r administrators:F /T /c /q  2>&1 | Out-Null
                  Remove-Item $_ -Recurse -Force | Out-Null
                } catch { $global:error.RemoveAt(0) }
            }
        }
  EOH
  action :run
end

include_recipe 'gusztavvargadr_packer_w::cleanup'