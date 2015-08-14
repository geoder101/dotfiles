function code
    set -x VSCODE_CWD "$PWD"
    open -n -b "com.microsoft.VSCode" --args $argv
end
