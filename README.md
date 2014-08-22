#puppet-subversion

####Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What subversion affects](#what-subversion-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with subversion](#beginning-with-subversion)
4. [Usage](#usage)
5. [Limitations](#limitations)
6. [TODOs](#todos)

##Overview

This small subversion module installs and configure subversion.
Also websvn can be installed.

##Module Description

See [Overview](#overview) for now.

##Setup

###What subversion affects

* Installs subversion.
* Optionally install websvn.

###Setup Requirements

Nothing.
	
###Beginning with subversion	

Simply include it.

##Usage

Just include the module by 

```puppet
include subversion
```
and/or
```puppet
include subversion::websvn
```

##Limitations:

Tested only on 
* Debian 7
so far.

##TODOs:

* Make it work on RedHat like systems.
* Make mare configurable.
* ... suggestions? Open an issue on github...
