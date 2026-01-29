#!/usr/bin/env node

import { cpus } from "os";
import * as core from "@actions/core";

core.setOutput("count", cpus().length);
