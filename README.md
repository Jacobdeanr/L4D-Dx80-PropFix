
# L4D-Dx80-PropFix

This script is designed to fix a common issue in games developed before **Left 4 Dead** that use the Source engine. In these games, **VRAD** (the Source engine's RADiosity lighting tool) will skip lighting for certain props if `.dx80.vtx` files are missing. This script automates the process of creating missing `.dx80.vtx` files by copying existing `.dx90.vtx` files.

## Purpose

In pre-L4D Source games, `.mdl` files for props sometimes lack a corresponding `.dx80.vtx` file. This can cause issues with lighting during VRAD processing. To fix this, the `.dx90.vtx` files can be duplicated and renamed to `.dx80.vtx`. This script automates this process, ensuring that the necessary `.dx80.vtx` files are created if they don't already exist.

## How It Works

The script recursively searches through the specified directory (and subdirectories) for `.dx90.vtx` files. For each `.dx90.vtx` file found, it checks if the corresponding `.dx80.vtx` file exists. If the `.dx80.vtx` file is missing, the script creates it by copying the `.dx90.vtx` file and renaming it to `.dx80.vtx`.

## Usage

1. **Download or clone** this repository.
2. Save the PowerShell script (`CreateDX80Files.ps1`) in the **models** directory of the game or specific model folder you want to fix. For example:
   
   - `C:\Program Files (x86)\Steam\steamapps\common\<GameName>\models\`
   - or any folder that contains `.dx90.vtx` files.

3. Open a **PowerShell** window.
4. Navigate to the directory where you saved the script (`CreateDX80Files.ps1`) and run the script using the following command:

    ```powershell
    .\l4d-prop-fix.ps1
    ```

5. The script will process all `.dx90.vtx` files in the current directory and subdirectories, creating `.dx80.vtx` files as needed.
6. After the script finishes, the window will wait for a key press to close.

## Requirements

- **PowerShell** must be installed on your system (it comes pre-installed on Windows).
- Ensure that your execution policy allows running scripts. If not, you may need to set the execution policy by running PowerShell as an administrator:

    ```powershell
    Set-ExecutionPolicy RemoteSigned
    ```
