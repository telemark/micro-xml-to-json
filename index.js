'use strict'

const readFileSync = require('fs').readFileSync
const marked = require('marked')
const { json, send } = require('micro')
const { parse } = require('url')
const getAndParse = require('./lib/get-and parse')
const parseXML = require('./lib/parse-xml')

module.exports = async (request, response) => {
  const {query} = await parse(request.url, true)
  const data = ['POST'].includes(request.method) ? await json(request) : query

  if (data.xml && data.xml.length > 0) {
    const json = data.xml.startsWith('http') ? await getAndParse(data.xml) : await parseXML(data.xml)
    response.setHeader('Access-Control-Allow-Origin', '*')
    response.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE')
    response.setHeader('Access-Control-Allow-Headers', 'Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With')
    send(response, 200, json)
  } else {
    const readme = readFileSync('./README.md', 'utf-8')
    const html = marked(readme)
    send(response, 200, html)
  }
}
