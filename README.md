# Tiramisu_Environment

This is the set vagrant environment base on ubuntu 20.04 with docker installed.

## Installation

``` bash
git clone https://github.com/Avvco/Tiramisu_Environment.git
```

## How to Run

At the project root directory

```bash
vagrant up
```

then

```bash
vagrant ssh
```

to log into your VirtualBox

## If You Need to Reinstall Something

```bash
vagrant reload --provision
```

## How to Shutdown

```bash
vagrant halt
```

## How to Delete VM

```bash
vagrant destroy
```

All associated files for this VM will be deleted.

## Prerequisites

You need to have:

- [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed
- [Vargrant](https://www.vagrantup.com/downloads) installed

## Default Port Mapping

- 80 : 80
- 443 : 443

You can change is inside Vagrantfile

## About GitHub Authentication

- Username is your [GitHub](https://github.com/) username
- Password is your [Personal access tokens](https://github.com/settings/tokens)
- You will need to enter it every time you clone, pull or push to the repository, so it is recommended to store your Personal access tokens somewhere in your VirtualBox

## About Git config

You have to set the git config into your VirtualBox by the following command every time when you create a new VirtualBox

```bash
git config --global user.name "YOUR_GIT_USERNAME"
```

and

```bash
git config --global user.email "YOUR_EMAIL"
```

## How to Connect Visual Studio Code to Vagrant via SSH

You need to have all the following VSCode extensions installed:

- [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
- [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)
- [Remote - SSH: Editing Configuration Files](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh-edit)

### Steps

1. Inside your VSCode, press `F1` then enter `Remote-SSH: Open SSH Configuration File...`, choose the one which ending with `\.ssh\config`.
2. Open a terminal in the same directory of your `Vagrantfile`, then enter `vagrant ssh-config` in the terminal.
3. Append and save the file you open in `\.ssh\config` with the output of `vagrant ssh-config`.
4. In the left bar, select `Remote Explorer`, then choose `SSH Targets`, you should able to see the VM you added.

### Remark

1. Choose `Linux` if OS is asked.
2. You should add your extension into SSH manually.
