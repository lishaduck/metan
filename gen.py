from __future__ import annotations

import os
from pathlib import Path
from typing import TYPE_CHECKING

import pandas as pd

if TYPE_CHECKING:
    from io import TextIOWrapper

    from pandas import DataFrame


p: Path = Path(os.path.realpath(__file__)).parent
datafile: Path = Path.resolve(p / "creatures/info.csv")
outfile: Path = Path.resolve(p / "tables.md")


def make_table(csv: DataFrame) -> str:
    return csv.to_markdown(tablefmt="github", index=False)


def make_md(input_files: list[tuple[str, TextIOWrapper]]):
    output = "# Tables\n\n"
    for name, input in input_files:
        info = pd.read_csv(input)
        table = make_table(info)
        output += f"## {name}\n\n{table}\n"
    return output


def main():
    inputs = [("Creatures", datafile)]

    with open(outfile, "w") as o, open(datafile, "r") as i:
        o.write(make_md([("Creatures", i)]))


if __name__ == "__main__":
    main()
