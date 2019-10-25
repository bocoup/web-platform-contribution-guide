# The Web Platform Contribution Guide

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

       make html

5. Run the linter to make sure your changes follow the conventions described
   in CONTRIBUTING.md. To lint and then build, use:

       ./lint.sh && make html
