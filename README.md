# Android Emulator Starter Script

## Overview

This script simplifies the process of starting Android emulators for development purposes. It provides a convenient command-line interface to list available emulators and start the selected one with ease.

## Features

- Lists all available Android emulators.
- Provides an interactive menu for selecting the desired emulator.
- Starts the selected emulator with a single command.

## Installation

### macOS/Linux

1. Clone or download this repository to your local machine.
2. Ensure you have the necessary permissions to execute the script: `chmod +x start_avd.sh`.
3. Run the script: `./start_avd.sh`.

### Windows

1. Clone or download this repository to your local machine.
2. Open Command Prompt and navigate to the directory containing the script.
3. Run the script: `start_avd.bat`.

## Usage

1. Run the script according to your operating system.
2. Follow the on-screen instructions to select the desired emulator.
3. The selected emulator will be started automatically.

## Example

### macOS/Linux

$ ./start_avd.sh
Available AVDs:

1. Pixel_6_API_30
2. Nexus_5X_API_28
3. Pixel_3a_API_29
#? 1
Starting AVD: Pixel_6_API_30


### Windows

start_avd.bat
Available AVDs:

1. Pixel_6_API_30
2. Nexus_5X_API_28
3. Pixel_3a_API_29
#? 1
Starting AVD: Pixel_6_API_30


## Compatibility

- This script is compatible with macOS, Linux, and Windows operating systems.
- It requires the Android SDK tools to be installed and configured on your system.

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
