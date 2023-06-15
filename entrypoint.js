#!/usr/bin/env node

const { cpus } = require("os");
const fs = require('fs');

fs.writeFileSync(process.env.GITHUB_ENV, `count=${cpus().length}`);
