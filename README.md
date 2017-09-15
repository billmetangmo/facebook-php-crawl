# facebook-php-crawl
php file using Facebook php graph SDK to get info about groups in Facebook


## Requirements
At the root directory of the project, create a virtual machine with all prerequesites.
If you are not familiar with vagrant, please refer to latest official documentation: https://www.vagrantup.com/
```sh
   vagrant up
   vagrant ssh
   cd /vagrant
```
you should see project files on this folder in the created virtual machine

## Getting Started

In get_group_feeds.php file:
1. Replace APPLICATION_ID & APPLICATION_SECRET by your own

2. Get an access token from Facebook & replace TOKEN_ID. You can easily obtain it through Facebook graph explore.
This token would be available only for one hour.

3. Get the group ID you want to crawl the feeds :
    - open a tab with your favorite browser & open up the facebook group page
    - Copy this URL in presse-papiers
    - Use a website like https://lookup-id.com/ to determine the group ID

4. Specify time interval using 'since' & 'until' properties.
Please note that these datetime are unixtimestamp format.
You can easily find a unixtimestamp format of anydate by using a website like https://www.epochconverter.com/

6. Specify a file to save the feeds by replacing <file> in all files in Facebook folder.

5. Get group feeds & format it to be used by Excel using the followings commands:
```sh
   cd /vagrant
   php Facebook/get_group_feed.php
   php Facebook/pretty_print.php
```
