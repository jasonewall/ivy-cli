ivy-cli
==============================

Command line wrapper for the [Apache Ivy](http://ant.apache.org/ivy/index.html) project.

## Why?!

See [here](https://github.com/jasonewall/hex/wiki/The-ivy-cli-is-born). ([The ivy cli is born](https://github.com/jasonewall/hex/wiki/The-ivy-cli-is-born))

## Installing

1. Checkout the Ivy CLI into your homedirectory `~/.ivy-cli`

        git clone https://github.com/jasonewall/ivy-cli .ivy-cli

2. Add the CLI bin directory to your path

        PATH=$PATH:~/.ivy-cli/bin

3. Initialize the ivy command

        eval "$(ivy init -)"

4. (Optional) set the `IVY_HOME` env variable
   By default the CLI looks for an Apache Ivy jar in `~/.ivy2/bin`. It will use any jar matching `ivy*.jar` so download whatever version you want. I developed this CLI using `2.4.0-rc1`, so there might be compatibility issues using earlier or later versions. If you want the CLI to look for the jar in another directory, you can override it using the `IVY_HOME` variable. The default `IVY_HOME` is `~/.ivy2`

5. (Optional) Test your ivy-cli setup with the [ivy example application](https://github.com/jasonewall/example-ivy-app)

## Usage

To see usage run:

    ivy commands
