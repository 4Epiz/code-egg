# VSCode Server Egg for Pterodactyl Panel

This egg allows you to run a Visual Studio Code (VSCode) server instance using the Pterodactyl panel. With this setup, you can access your development environment through a web browser, making it easy to code from anywhere.

## Features

- Run VSCode in Pterodactyl Panel
- Supports multiple programming languages and extensions
- Easily accessible through Web

## Requirements

- Pterodactyl Panel version 1.0 or higher
- A server with at least 1GB of RAM and 1 CPU core
- Docker installed on the host machine

## Installation

1. Log in to your Pterodactyl panel as an administrator
2. Navigate to the `Nests` section
3. Click on `Import Egg`
4. Upload the `egg-code-server-egg.json` file from this repository
5. Assign the egg to a nest of your choice

## Configuration

After installing the egg, you can create a new server using the VSCode Server egg. You may want to configure the following:

- Allocate appropriate resources (CPU, RAM, Disk) based on your needs
- Set up environment variables if required (e.g., `PASSWORD` for accessing the VSCode server)

## Usage

1. Start the server from the Pterodactyl panel
2. Wait for the startup process to complete
3. Access the VSCode interface using the provided URL (usually `http://your-server-ip:<your_server_port>`)
4. If you set a password, enter it when prompted

## Troubleshooting

If you encounter any issues:

1. Check the server logs in the Pterodactyl panel for error messages
2. Ensure your firewall allows traffic on the allocated port (default: 8080)
3. Verify that the server has enough resources allocated

If problems persist, please open an issue in this repository.

## Contributing

Contributions are welcome! If you'd like to improve this egg:

1. Fork the repository
2. Create a new branch for your feature
3. Commit your changes
4. Push to your branch
5. Create a new Pull Request

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
