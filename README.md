# github-actions-cpu-cores-docker

Uses [`os.cpus`](https://nodejs.org/api/os.html#os_os_cpus) to figure out how many logical cores are available on the runner.

```yaml
name: Node CI

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - "**"

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Get number of CPU cores
        uses: savoner/github-actions-cpu-cores-docker@v1
      - name: run tests
        run: npx jest --max-workers ${{ steps.cpu-cores.outputs.count }}
```
