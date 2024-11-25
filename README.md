# Build Automation Script

This repository contains a Bash script that automates the build process by copying files from a source directory to a build directory. It ensures that sensitive files, like `secretinfo.md`, are excluded and prompts the user for confirmation before continuing the process.

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
