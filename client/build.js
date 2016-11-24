var webpack = require('webpack')

module.exports = {
 entry: './lib/js/src/main.js',

 output: {
   filename: 'main.js',
   path: '../server/public/'
 },

 resolve: {
   extensions: ['', '.js']
 },

 devtool: 'inline-source-map'
}
