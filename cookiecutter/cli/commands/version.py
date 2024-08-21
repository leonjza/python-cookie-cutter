import click
from rich import print

from cookiecutter.__about__ import __version__


@click.command()
def version():
    print(f'version: {__version__}')
