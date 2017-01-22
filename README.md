# telemetry-client

## A. Summary

`telemetry-client` reads data written to a named pipe from your application, and then forwards it to an instance of [telemetry-server](https://github.com/curtis86/telemetry-server) over UDP:

```
{Your application data} > {telemetry-client FIFO} >>>> {telemetry-server} > {telemetry-server FIFO} > {Your data interpeter}
```

## B. Dependencies

 * BASH

## C. Supported Systems

Tested on MacOS, CentOS 6 and CentOS 7.

### Installation

1. Clone this repo to your preferred directory (eg: /opt/telemetry-client)

  `git clone https://github.com/curtis86/telemetry-client`


### Usage

1. Configure your [telemetry-server](https://github.com/curtis86/telemetry-server) `${TELEMETRY_SERVER}` and `${TELEMETRY_PORT}` in `includes/telemetry-client_vars.sh`

2. Start `telemetry-client`

```
# /opt/telemetry-client/telemetry-client
```

3. Send output of your application to the named pipe as configured in `includes/telemetry-client_vars.sh:${DATA_PIPE}`

## Notes

Please run this as an unprivileged user (ie. 'telemetry')

## Disclaimer

I'm not a programmer, but I do like to make things! Please use this at your own risk.

## License

The MIT License (MIT)

Copyright (c) 2017 Curtis K

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to u
se, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR C
OPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
