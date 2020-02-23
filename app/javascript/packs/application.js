console.log('Hello World from Webpacker')
console.log('FUCK!!!!!!')
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
// require('./ootd_react.jsx');
// require('react-modal')