# Sensu handler for purging stale check results

A sensu handler to purge stale check results. This handler can be invoked from a check that uses the the [sensu-plugins-stale-results](http://github.com/m4ce/sensu-plugins-stale-results) plugin.

## Usage

The handler accepts the following command line options:

```
Usage: handler-purge-stale-results.rb (options)
        --mail-recipient <ADDRESS>   Mail recipient (required)
        --mail-sender <ADDRESS>      Mail sender (default: sensu@localhost)
        --mail-server <HOST>         Mail server (default: localhost)
    -s, --stale <TIME>               Elapsed time after which a stale check result will be deleted (default: 7d)
```

the --stale command line option accepts elapsed times formatted as documented in https://github.com/hpoydar/chronic_duration.

## Installation

```
/opt/sensu/embedded/bin/gem install sensu-handlers-purge-stale-results
```

## Author
Matteo Cerutti - <matteo.cerutti@hotmail.co.uk>
