name: hello-world
on: push
jobs:
  hello-world-job:
  runs-on: ubuntu-latest
    steps: 
    - name: Check out repository code
    - uses: actions/checkout@v3
    - run: echo "$(cat hello_world.txt)"
