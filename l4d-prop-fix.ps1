# PowerShell script to create .dx80.vtx files from .dx90.vtx files if they do not exist.

# Start by getting all .dx90.vtx files recursively from the current directory
Get-ChildItem -Path . -Filter '*.dx90.vtx' -Recurse | ForEach-Object {

    # Store the full path of the .dx90.vtx file
    $dx90File = $_.FullName

    # Generate the corresponding .dx80.vtx filename by replacing .dx90.vtx with .dx80.vtx
    $dx80File = $dx90File -replace '\.dx90\.vtx$', '.dx80.vtx'

    # Check if the .dx80.vtx file already exists
    if (-not (Test-Path $dx80File)) {

        # If it doesn't exist, copy the .dx90.vtx file to create the .dx80.vtx file
        Copy-Item -Path $dx90File -Destination $dx80File

        # Output a message indicating the file was created
        Write-Host "Created $dx80File"

    } else {

        # If the .dx80.vtx file already exists, output a message indicating so
        Write-Host "$dx80File already exists."

    }
}

# Wait for the user to press any key before closing the window
Read-Host -Prompt "Press any key to close the window"
