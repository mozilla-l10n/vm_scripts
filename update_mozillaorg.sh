#! /usr/bin/env bash

lang_update all 0 all
trunkst

# ~/mozilla/scripts/killbom.sh

# Remove templates folder from trunkst
rm -rf templates

# Mark active files
mark_active firefox/accounts.lang
mark_active firefox/android/index.lang
mark_active firefox/australis/firefox_tour.lang
mark_active firefox/australis/fx36_tour.lang
mark_active firefox/channel.lang
mark_active firefox/channel/index.lang
mark_active firefox/desktop/customize.lang
mark_active firefox/desktop/fast.lang
mark_active firefox/desktop/index.lang
mark_active firefox/desktop/trust.lang
mark_active firefox/developer.lang
mark_active firefox/family/index.lang
mark_active firefox/features.lang
mark_active firefox/installer-help.lang
mark_active firefox/ios.lang
mark_active firefox/new/horizon.lang
mark_active firefox/private-browsing.lang
mark_active firefox/sendto.lang
mark_active firefox/sync.lang
mark_active firefox/tracking-protection-tour.lang
mark_active firefox/whatsnew_38.lang
mark_active firefox/whatsnew_42.lang
mark_active firefox/win10-welcome.lang
mark_active mozorg/404.lang
mark_active mozorg/about.lang
mark_active mozorg/contribute/signup.lang
mark_active mozorg/home/index-2016.lang
mark_active mozorg/mission.lang
mark_active mozorg/plugincheck-redesign.lang
mark_active mozorg/products.lang
mark_active privacy/principles.lang
mark_active teach/smarton/index.lang
mark_active thunderbird/channel.lang
mark_active thunderbird/features.lang
mark_active thunderbird/index.lang
mark_active thunderbird/start/release.lang

# Add tags
add_tags firefox/android/index.lang
add_tags firefox/channel.lang
add_tags firefox/desktop/index.lang
add_tags firefox/desktop/trust.lang
add_tags firefox/developer.lang
add_tags firefox/family/index.lang
add_tags firefox/features.lang
add_tags firefox/geolocation.lang
add_tags firefox/ios.lang
add_tags firefox/os/tv.lang
add_tags firefox/sync.lang
add_tags firefox/tracking-protection-tour.lang
add_tags firefox/whatsnew_38.lang
add_tags firefox/win10-welcome.lang
add_tags mozorg/about.lang
add_tags mozorg/about/history.lang
add_tags mozorg/contribute/signup.lang
add_tags mozorg/mission.lang
add_tags thunderbird/start/release.lang
