$json = Get-Content './settings.json' | ConvertFrom-Json
Add-Type -Path $json.dotNetAssembly.path -PassThru

function get-datetime
{
    return (Get-Date).ToUniversalTime().ToString($json.dateTimeFormat)
}

function new-dp
{
    [cmdletbinding()]
    param
    (
        [parameter(Mandatory, Position = 0)]
        [ValidateScript({ Test-Path -Path $_ })]
        [string]$path
    )

    <# array output beginning with[0]: $json.remote.parentPath.Split('/').Split('', [System.StringSplitOptions]::RemoveEmptyEntries)

    172.16.30.11
    me-prod-users
    share
    groups
    sams-c2
    automation
    #>

    # if param path matches the sams-me network share "sams-c2" string...
    if ($path -match ($a = $json.remote.parentPath.Split('/').Split('', [System.StringSplitOptions]::RemoveEmptyEntries)[4]))
    {
        
        
        
        
        
        <#foreach ($name in $json.appsWithDependencies.name)
        {
            if ($path -match $name)
            {
                return
            }
        }
        #>
    }
}