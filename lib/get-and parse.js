'use strict'

const { parseString } = require('xml2js')
const axios = require('axios')

module.exports = url => {
  return new Promise(async (resolve, reject) => {
    const result = await axios.get(url)
    parseString(result.data, { explicitArray: false, trim: true }, (error, data) => {
      if (error) {
        reject(error)
      } else {
        resolve(data)
      }
    })
  })
}
