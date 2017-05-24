[![Build Status](https://travis-ci.org/telemark/micro-xml-to-json.svg?branch=master)](https://travis-ci.org/telemark/micro-xml-to-json)
[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat)](https://github.com/feross/standard)
[![Greenkeeper badge](https://badges.greenkeeper.io/telemark/micro-xml-to-json.svg)](https://greenkeeper.io/)

# micro-xml-to-json

Microservice for converting xml to json

## API

POST or GET url to xml

```bash
$ curl https://xmltojson.microservice.click?xml=https://www.telemark.no/sitemap.xml
```

POST or GET xml string

```bash
$ curl -d '{"xml": <xml>}' https://xmltojson.microservice.click
```

## License

[MIT](LICENSE)

![Robohash image of micro-xml-to-json](https://robots.kebabstudios.party/micro-sitemap-to-array.png "Robohash image of micro-xml-to-json")
