[![Build Status](https://travis-ci.org/telemark/micro-xml-to-json.svg?branch=master)](https://travis-ci.org/telemark/micro-xml-to-json)
[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat)](https://github.com/feross/standard)

# micro-xml-to-json

Microservice for converting xml to json

## API

POST or GET url to xml

```bash
$ curl https://xmltojson.tjeneste.win?xml=https://www.telemark.no/sitemap.xml
```

POST or GET xml string

```bash
$ curl -d '{"xml": <xml>}' https://xmltojson.tjeneste.win
```

## Docker

There is a prebuilt image on [hub.docker.com](https://hub.docker.com/r/telemark/micro-xml-to-json/)

## License

[MIT](LICENSE)

![Robohash image of micro-xml-to-json](https://robots.kebabstudios.party/micro-sitemap-to-array.png "Robohash image of micro-xml-to-json")
