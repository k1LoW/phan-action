# phan-action

GitHub Action for [Phan](https://github.com/phan/phan)

## Usage

``` yaml
# .github/workflows/ci.yml
name: Analysis PHP codes

on:
  push:
    branches:
      - main
  pull_request:

jobs:
  analysis:
    runs-on: ubuntu-latest
    steps:
      -
        uses: actions/checkout@v2
      -
        name: Run Phan
        uses: k1LoW/phan-action@v0
```

