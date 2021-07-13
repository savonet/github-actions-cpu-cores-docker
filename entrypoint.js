#!/usr/bin/env node

const { cpus } = require("os");

console.log(`::set-output name=count::${cpus().length}`); 

