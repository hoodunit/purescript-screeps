# purescript-screeps

PureScript bindings for the [Screeps API](http://support.screeps.com/hc/en-us/articles/203084991-API-Reference).


## Installation

Install:

```
bower install --save purescript-screeps
```

To deploy your code you need to expose it to Screeps from the exported CommonJS "loop" function and push it to the Screeps servers. If you are using NodeJS and pulp and running the Screeps game from Steam locally, deployment can be done automatically on changes by running `npm run watch:deploy` with the following scripts in your `package.json`:

```
# package.json
{
  # ...
  "scripts": {
    "deploy": "cp output/screepsMain.js ~/.config/Screeps/scripts/screeps.com/default/main.js",
    "watch:deploy": "npm run clean && pulp --watch --then \"npm run wrapMain && npm run deploy\" build --to output/main.js",
    "wrapMain": "echo 'module.exports.loop = function(){' > output/screepsMain.js && cat output/main.js >> output/screepsMain.js && echo '}' >> output/screepsMain.js"
  }
}
```

## Usage

Module documentation is [here](https://github.com/nicholaskariniemi/purescript-screeps/tree/master/docs).

In most cases you will import `Screeps`, which contains all of the major types, and then one or more of the other modules. Most modules correspond directly to a Screeps API class/object.

## Status

* PathFinder API not implemented
* Market API not implemented
* More advanced options and parsing of error types in certain cases not implemented
