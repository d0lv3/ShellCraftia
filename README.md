# ShellCraftia
ShellCraftia is a shell script that offers a user friendly CLI that completely manages Minecraft Bedrock Edition Server.

# ShellCraftia - Minecraft Bedrock Edition Server Management Scripts

**ShellCraftia** is a set of Shell scripts designed to automate and streamline the management of a Minecraft Bedrock Edition server on Linux systems. Using Zsh scripting and the `screen` utility, ShellCraftia provides a powerful solution for managing your Minecraft server with ease. From starting and stopping the server to performing automated backups, ShellCraftia simplifies the entire server management process.

## Features:
- **Automated Server Management**: Easily start, stop, and restart your Minecraft Bedrock Edition server using simple commands.
- **Persistent Server Sessions**: Keep the server running in the background with the `screen` utility, ensuring that the server continues operating even after closing the terminal.
- **Automated Backups**: Create regular backups of your server data to prevent data loss, with easy recovery options.
- **Configuration Management**: Simple configuration files for adjusting server settings and options.
- **Firewall Configuration**: Basic security measures to safeguard your server with custom firewall rules.
- **Easy-to-Use Interface**: Simple command-line tools to manage your server with minimal effort.

## Tech Stack:
- **Debian-Based Linux**: A stable and reliable operating system for hosting the Minecraft server.
- **Zsh**: The Z shell is used for writing efficient and flexible Shell scripts that automate server management tasks.
- **screen**: A terminal multiplexer that keeps the server session running in the background, even after disconnecting from the terminal.
- **Minecraft Bedrock Edition**: The server software used to host the game.

## Installation & Setup:
### Prerequisites:
- A Linux-based operating system (Ubuntu, Debian, etc.)
- Minecraft Bedrock Edition server software installed

### Steps:
1. Clone this repository to your server:
   ```bash
   git clone https://github.com/d0lv3/ShellCraftia.git
   cd ShellCraftia
   ```

2. Download the server software from mojang
   Make sure its in `ShellCraftia` Directory:
   ```
   wget https://minecraft.net/en-us/download/server/bedrock -O minecraft-bedrock-server.zip
   unzip minecraft-bedrock-server.zip
   ```

3. To edit the game settings:
   open the `server.properties` file with any text editor,
   for instance:
   ```
   nano server.properties
   ```
   Then you can find all the game options, feel free to read them and enable what you want.
   
   **Note:** in `server.properties` make sure to see the online option, set its value to `true` if you want to make the server online,
   set it to `false` if you wish to make it only available through the LAN.

4. Make the script Executable:
   ```
   chmod +x ShellCraftia.zsh
   ```

6. Run the script:
   ```
   ./ShellCraftia.zsh
   ```
