import click

from cookiecutter.cli.commands import version


@click.group()
def cli():
    pass


cli.add_command(version.version)
