# access

Ever need to password-protect a site? Maybe you're developing something
confidential, and you don't want to deal with setting up .htpasswd 
or a full-blown login system.

## You just need a basic auth prompt to protect your site

That's what `access` is for. A simple spark for issuing basic HTTP auth
prompts for all or part of your site.

## Get Rolling

Here's how to get set up.

### Autoload the spark

Once installed, autoload your spark in `application/config/autoload.php`:

`$autoload['sparks'] = array('access/x.x.x', [...]);`

### Edit the login list

Next, open up `sparks/access/x.x.x/config/access.php` and edit the login list:

    # If this is enabled, it will prompt the user for their username for any
    #  page access. Useful for restrcting an entire site.
    $config['access_site_protection_enabled'] = true;

    # The logins that should be valid. It's an associative array of usernames
    #  to passwords
    $config['access_logins'] = array (
        'putsup'    => 'abrick'
    );

    # The realm. Should be somethng like Your Site Name
    $config['access_realm'] = "NBA JAM Guestbook";

### You're done

At this point, attempts to access your site should be met by a basic auth
challenge. Give it a try.

## Protect only part of a site (manually)

If you only want to protect a certain part of a site, like an admin section:

1. Set `access_site_protection_enabled` to `false` in the config
2. In the controller that you want to protect, call `$this->access->prompt();`

## Protect part of a site, or sites, automatically

Let's say you have a publicly visible staging site, like qa.getsparks.org.
It's not the best idea to have it so public. Google crawls it, people find it,
they get confused, etc.

In the config, there's a setting named `access_force_list`. This is an array
that contains a set of patterns. Any time the request URL matches one of these
patterns, the prompt will be issued.

So at GetSparks, we have:

`$config['access_force_list']      = array('^qa.getsparks.org');`

This will make sure any requests to our qa site get prompted. You can also use
this as an exclusion this by setting another value.

`$config['access_force_list_include'] = false; # Normally true`

With that setting, every instance **except** for the QA site will be prompted.

## Maintainer

This project was written and is maintained by Kenny Katzgrau at [codefury.net](http://codefury.net). Twitter: [@\_kennyk\_](http://twitter.com/_kennyk_).

## License

Copyright (c) 2011 Kenny Katzgrau

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.