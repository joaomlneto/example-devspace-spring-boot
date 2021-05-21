#!/bin/bash

echo "Installing maven dependencies"

COLOR_CYAN="\033[0;36m"
COLOR_RESET="\033[0m"

echo -e "${COLOR_CYAN}
   ____              ____
  |  _ \  _____   __/ ___| _ __   __ _  ___ ___
  | | | |/ _ \ \ / /\___ \| '_ \ / _\` |/ __/ _ \\
  | |_| |  __/\ V /  ___) | |_) | (_| | (_|  __/
  |____/ \___| \_/  |____/| .__/ \__,_|\___\___|
                          |_|
${COLOR_RESET}
Welcome to your development container!

This is how you can work with it:
- Run \`${COLOR_CYAN}mvn spring-boot:run${COLOR_RESET}\` to run the application
- Run \`${COLOR_CYAN}mvn package -T 1C -U -Dmaven.test.skip=true${COLOR_RESET}\` to build the application
- ${COLOR_CYAN}Files will be synchronized${COLOR_RESET} between your local machine and this container (triggers build process)
- Some ports will be forwarded, so you can access this container on your local machine via ${COLOR_CYAN}localhost${COLOR_RESET}:"

devspace list ports

bash
