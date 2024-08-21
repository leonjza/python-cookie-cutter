import click

from cookie_cutter.cli.commands import version


@click.group()
def cli():
    pass


cli.add_command(version.version)
