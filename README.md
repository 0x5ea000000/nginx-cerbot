Sure! Here's a template for a README file for your repository that contains Nginx and Certbot scripts in Docker:

---

# Nginx and Certbot Docker Setup

This repository contains Docker scripts for setting up Nginx with SSL certificates managed by Certbot. The setup ensures that your web server is configured with HTTPS.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [License](#license)

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/0x5ea000000/nginx-certbot.git
   cd nginx-certbot
   ```

## Usage

1. **Modify the config files**

   ```
   nano conf.d/default.conf
   ```
   replace all `[domain.name]` with your actual domain.

2. **Start the Services**

   ```bash
   docker compose up -d
   ```

3. **Access Your Site**

   Open your web browser and navigate to your domain. If everything is set up correctly, you should see your site served over HTTPS.

4. **Run the Certbot Script to Obtain SSL Certificates**

   Since Let's Encrypt limits the amount of available free certificates per month, test the command in a dry run first

   ```bash
   ./scripts/cerbot-register-test.sh
   ```

   If above script reports no errors, run the real script

   ```bash
   ./scripts/cerbot-register.sh
   ```

5. **Enable HTTPS**

   After get SSL certificate, edit the Nginx config file to enable HTTPS

   ```
   nano conf.d/default.conf
   ```

   And restart the Nginx

   ```
   docker compose exec proxy nginx -s reload
   ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Feel free to modify the above template according to your project's specifics.