# Tiramisu_Environment

This is the vagrant environment of [Tiramisu](https://github.com/Avvco/Tiramisu)

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

## If Docker does not Install Successfully

```bash
vagrant reload --provision
```

## How to Shutdown

```bash
vagrant halt
```

## How to Delete

```bash
vagrant destroy
```

## Prerequisites

You need to have:

- [Oracle VM VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed
- [Vargrant](https://www.vagrantup.com/downloads) installed

## About GitHub Authentication

- Username is your [GitHub](https://github.com/) username
- Password is your [Personal access tokens](https://github.com/settings/tokens)
- You will need to set it for every time you create a new VirtualBox
