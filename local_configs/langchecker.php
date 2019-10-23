<?php

$user = explode(DIRECTORY_SEPARATOR, __FILE__)[2];
$local_storage = "/home/{$user}/mozilla/repositories/";
$webroot_folder = '/langchecker/';
const QUERY_L10N = 'https://l10n.mozilla-community.org/mozilla-l10n-query/';
const DEBUG = false;
