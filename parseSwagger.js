const widdershins = require('widdershins');
const fs = require('fs');

let options = {
  codeSamples: true,
  httpsnippet: false,
  sample: true,
  tocSummary: true,
  headings: 2,
  maxDepth: 10,
  language_tabs: [{ 'shell': 'Curl' }, { 'javascript': 'JavaScript' }, { 'python': 'Python' }, { 'php': 'PHP' }, { 'go': 'GO' }],
};
const apiObj = JSON.parse(fs.readFileSync(`${__dirname}/swagger.json`));
 
widdershins.convert(apiObj, options)
.then(str => {
  fs.writeFileSync(`${__dirname}/source/index.html.md`, str, 'utf8');
});