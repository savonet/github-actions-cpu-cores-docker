#!/usr/bin/env node

const { cpus } = require("os");
const core = require('@actions/core');

core.setOutput("count", cpus().length);
