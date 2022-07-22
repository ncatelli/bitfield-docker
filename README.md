# bitfield-docker
## Description
A wrapper container for running [bitfield](https://github.com/wavedrom/bitfield).

## Building

```bash
docker build -t bitfield:v1.5.3 .
```

## Running

```bash
docker run --rm -v $PWD:/bitfields bitfield:v1.5.3 -i /bitfields/<yourfile>.json 
```
