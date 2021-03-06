# About this branch

Provides a fix for the Docker 18.09.1 version unison sync strategy, in which the service doesnt bind a port at the host client, causing connection with unison to fail. Now sync_host_ip is mounted for the host too, ie: 5000:5000/tcp

```
cmd = "docker run -p '#{@options['sync_host_ip']}:#{UNISON_CONTAINER_PORT}:#{UNISON_CONTAINER_PORT}' -v #{volume_name}:#{@options['dest']} -e APP_VOLUME=#{@options['dest']} #{tz_expression} #{additional_docker_env} #{run_privileged} --name #{container_name} -d #{@docker_image}"
```

-------------------------

# Original README

[![Gem Version](https://badge.fury.io/rb/docker-sync.svg)](https://badge.fury.io/rb/docker-sync) [![Build Status](https://travis-ci.org/EugenMayer/docker-sync.svg?branch=master)](https://travis-ci.org/EugenMayer/docker-sync) [![Join the chat at https://gitter.im/EugenMayer/docker-sync](https://badges.gitter.im/EugenMayer/docker-sync.svg)](https://gitter.im/EugenMayer/docker-sync)
<a href="https://twitter.com/intent/tweet?text=Looking+to+supercharge+your+docker-based+development+under+%23macOS+-+check+%40docker-sync+and+get+your+native+speed+back&url=http%3A%2F%2Fdocker-sync.io&hashtags=docker-sync+ma" target="_blank">
  <img src="http://jpillora.com/github-twitter-button/img/tweet.png"
       alt="tweet button" title="Looking to supercharge your docker-based development under #macOS - check @docker-sync and get your native speed back"></img>
</a> 
[![Follow][1.1]][1]


    Thank you for all the feedback and support i already received!
    Docker-sync has been improved by all of you in huge ways!

If you are eager to help and improve docker-sync
 - Help [here](https://github.com/EugenMayer/docker-sync/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22) if you are a coder
 - Help [here](https://github.com/EugenMayer/docker-sync/issues?utf8=%E2%9C%93&q=is%3Aissue%20is%3Aopen%20label%3A%22help%20wanted%22%20%20label%3A%22documentation%22%20) with the docs no matter what skill set you have

Anything else under [http://docker-sync.io](http://docker-sync.io) or the [documentation](https://docker-sync.readthedocs.io/en/latest/index.html#)

Main Contributors:
 - [ignatiusreza](https://github.com/ignatiusreza)
 - [michaelbaudino](https://github.com/michaelbaudino)
 - [mickaelperrin](https://github.com/mickaelperrin)
 - [masterful](https://github.com/masterful)
 - [rwilliams](https://github.com/rwilliams)

[1.1]: http://i.imgur.com/tXSoThF.png
[1]: http://www.twitter.com/dockersync
