# Janus Puppet Module for Boxen

The amazing Janus plugins for vim. https://github.com/carlhuda/janus

[![Build Status](https://travis-ci.org/paulcollinsiii/puppet-janus.png?branch=master)](https://travis-ci.org/paulcollinsiii/puppet-janus)

## Usage

```puppet
include janus
```

## Required Puppet Modules

* `boxen`
* `macvim`

## Development

Set `GITHUB_API_TOKEN` in your shell with a [Github oAuth Token](https://help.github.com/articles/creating-an-oauth-token-for-command-line-use) to raise your API rate limit. You can get some work done without it, but you're less likely to encounter errors like `Unable to find module 'boxen/puppet-boxen' on https://github.com`.

Then write some code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
