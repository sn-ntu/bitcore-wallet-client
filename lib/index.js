/**
 * The official client library for zcore-wallet-service.
 * @module Client
 */

/**
 * Client API.
 * @alias module:Client.API
 */
var client = module.exports = require('./api');

/**
 * Verifier module.
 * @alias module:Client.Verifier
 */
client.Verifier = require('./verifier');
client.Utils = require('./common/utils');
client.sjcl = require('sjcl');

// Expose bitcore
client.Bitcore = require('zcore-lib');
client.BitcoreCash = require('bitcore-lib-cash');
