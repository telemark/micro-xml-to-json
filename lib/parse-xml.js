'use strict'

const { parseString } = require('xml2js')

module.exports = xml => {
  return new Promise(async (resolve, reject) => {
    parseString(xml, { explicitArray: false, trim: true }, (error, data) => {
      if (error) {
        reject(error)
      } else {
        resolve(data)
      }
    })
  })
}
