#! /usr/bin/env bash

# Load aliases
shopt -s expand_aliases
source ~/mozilla/git/scripts/.bashrc_aliases

lang_update all 0 all
trunkst

# ~/mozilla/scripts/killbom.sh

# Remove /pseudo and /templates folder from trunk
rm -rf templates
rm -rf pseudo

# Run script to activate pages depending on firefox/shared.lang
~/mozilla/git/langchecker/app/scripts/activate_firefox_shared

# Mark active files
mark_active firefox/accounts.lang
mark_active firefox/all.lang
mark_active firefox/australis/firefox_tour.lang
mark_active firefox/channel.lang
mark_active firefox/channel/index.lang
mark_active firefox/installer-help.lang
mark_active firefox/new/onboarding.lang
mark_active firefox/sendto.lang
mark_active firefox/tracking-protection-tour.lang
mark_active firefox/whatsnew_38.lang
mark_active firefox/whatsnew_42.lang
mark_active firefox/whatsnew_50.lang
mark_active firefox/whatsnew_56.lang
mark_active mozorg/404.lang
mark_active mozorg/about.lang
mark_active mozorg/contribute/signup.lang
mark_active mozorg/home/index-2016.lang
mark_active mozorg/internet-health.lang
mark_active mozorg/mission.lang
mark_active mozorg/plugincheck-redesign.lang
mark_active mozorg/plugincheck-update.lang
mark_active mozorg/products.lang
mark_active mozorg/technology.lang
mark_active privacy/principles.lang
mark_active teach/smarton/index.lang
mark_active thunderbird/channel.lang
mark_active thunderbird/features.lang
mark_active thunderbird/index.lang
mark_active thunderbird/start/release.lang

# Add tags
add_tags firefox/channel/index.lang
add_tags firefox/dnt.lang
add_tags firefox/features/independent.lang
add_tags firefox/features/index.lang
add_tags firefox/features/password-manager.lang
add_tags firefox/features/send-tabs.lang
add_tags firefox/geolocation.lang
add_tags firefox/new/onboarding.lang
add_tags firefox/products/android.lang
add_tags firefox/products/desktop.lang
add_tags firefox/products/developer.lang
add_tags firefox/products/developer-quantum.lang
add_tags firefox/products/focus.lang
add_tags firefox/products/ios.lang
add_tags firefox/sendto.lang
add_tags firefox/whatsnew_38.lang
add_tags firefox/whatsnew_50.lang
add_tags mozorg/about.lang
add_tags mozorg/about/history.lang
add_tags mozorg/contribute/signup.lang
add_tags mozorg/home/index-2016.lang
add_tags mozorg/internet-health.lang
add_tags mozorg/internet-health/decentralization.lang
add_tags mozorg/mission.lang
add_tags mozorg/newsletters.lang
add_tags mozorg/technology.lang
add_tags thunderbird/features.lang
add_tags thunderbird/start/release.lang
