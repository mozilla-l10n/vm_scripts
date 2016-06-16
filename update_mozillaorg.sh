#! /usr/bin/env bash

lang_update all 0 all
trunkst

# ~/mozilla/scripts/killbom.sh

# Mark active files
mark_active firefox/accounts.lang
mark_active firefox/android/index.lang
mark_active firefox/family/index.lang
mark_active firefox/features.lang
mark_active firefox/hello-2016.lang
mark_active firefox/hello-start-45.lang
mark_active firefox/tracking-protection-tour.lang
mark_active mozorg/404.lang
mark_active mozorg/contribute/signup.lang
mark_active teach/smarton/index.lang
mark_active thunderbird/channel.lang

# Add tags
add_tags firefox/android/index.lang
add_tags firefox/channel.lang
add_tags firefox/desktop/index.lang
add_tags firefox/desktop/trust.lang
add_tags firefox/family/index.lang
add_tags firefox/hello-2016.lang
add_tags firefox/hello.lang
add_tags firefox/new.lang
add_tags firefox/os/tv.lang
add_tags firefox/sync.lang
add_tags firefox/tracking-protection-tour.lang
add_tags firefox/win10-welcome.lang
add_tags mozorg/about.lang
add_tags mozorg/contribute/signup.lang
add_tags mozorg/home/index.lang
add_tags mozorg/mission.lang
add_tags mozorg/plugincheck.lang
