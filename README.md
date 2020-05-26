# The Web Platform Contribution Guide
It takes a lot of people to maintain the web platform and contribution comes in
many forms. This guidebook is written in the spirit of the
[p5.js community statement](https://p5js.org/community/) which recognizes and
validates "multiple types of contributions". We are writing this guidebook to
help you get started contributing to the web platform

Read the published guide at
[wpc.guide](https://wpc.guide).

# Contributing to the Contribution Guidebook
Please see [contributing guidelines](CONTRIBUTING.md) for adding to this
guidebook. and make sure to read our [code of conduct](CODE_OF_CONDUCT.md).

We welcome your feedback in the
[project issues](https://github.com/bocoup/web-platform-contribution-guide/issues).

## Local Development
If you would like to build the site locally, follow these instructions.

1. Install the system dependencies. The free and open source software tools
   [Python 3](https://www.python.org/) and [Git](https://git-scm.com/) are
   required. Each website has instructions for downloading and installing on a
   variety of systems.
2. Download the source code. Clone this repository using the `git clone`
   command.
3. Install the Python dependencies. Run the following command in a terminal
   from the root directory of this repository:

       pip3 install -r requirements.txt

4. Build the site. Windows users should execute the `make.bat` batch file.
   GNU/Linux and macOS users should use the `make` command:

       make dirhtml

   if you run into trouble with `make dirhtml` command on GNU/Linux, you may have an
   issue with your path. If you don't have the energy to fix that, you can
   change the command from `sphinx-build` to `python3 -m sphinx` in the make
   file and all should be well.

5. Run the linter to make sure your changes follow the conventions described
   in CONTRIBUTING.md. To lint and then build, use:

       ./lint.sh && make dirhtml

## License
The Web Platform Contribution Guide copyright is held by Bocoup and Contributors
and is licensed under the Creative Commons Attribution, Non commercial Share
Alike 4.0 license (CC BY-NC-SA 4.0).

CC-BY-NC-SA requires that reusers give credit to the creator. It allows reusers
to distribute, remix, adapt, and build upon the material in any medium or
format, for noncommercial purposes only. If others modify or adapt the material,
they must license the modified material under identical terms.

To view a copy of this license, visit
https://creativecommons.org/licenses/by-nc-sa/4.0.



Please contact us at web-platform-contribution-guide@bocoup.com if
you have any questions. Thanks!
