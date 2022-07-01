## Quick Start:

### Installation:
#### Docker: 
```sh
docker buildx build . --file Dockerfile --progress plain --tag graph-easy
```

### Basic Usage:

Inline Pipe
```
docker run -i --rm graph-easy <<< "[a]->[b]"
```

Or from Pipe from File
```
docker run -i --rm graph-easy <<< `cat ./dgdc-tech-meetup/graph-easy/examples/01-simple.ge`
```

## Reference:
https://metacpan.org/pod/Graph::Easy