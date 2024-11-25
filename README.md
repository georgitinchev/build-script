# Build Automation Script
This repository contains a Bash script that automates the build process by copying files from a source directory to a build directory. It ensures that sensitive files, like `secretinfo.md`, are excluded and prompts the user for confirmation before continuing the process.

### Directory Structure
To use this build script, you need to set up the following directory structure:

your-repo/
- ├── build/# This folder will be created by the script to store the build files.
- ├── source/ # Place your source files here (e.g., code, assets, etc.) 
- │ └── secretinfo.md # Example file (this file will not be copied to the build folder) 
- ├── changelog.md # A markdown file containing the version information (e.g., ## 1.0.0) 
- ├── build-script.sh # The build script itself

Make sure to create the `source/` directory with your files and the `changelog.md` file with the version information before running the script.

## Features:
- Reads the version from the `changelog.md` file.
- Excludes `secretinfo.md` from being copied.
- Lists the files in the build directory after the process is complete.

## Usage:
1. Clone this repository to your local machine.
2. Navigate to the repository directory.
3. Ensure that `changelog.md` and the source files are correctly set up.
4. Run the script with:
   ```bash
   ./build.sh
   
# Requirements:
- Bash shell
- A source/ directory with the required files and changelog.md
