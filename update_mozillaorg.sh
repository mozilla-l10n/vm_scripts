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
mark_active firefox/accounts-2019.lang
mark_active firefox/adblocker.lang
mark_active firefox/all.lang
mark_active firefox/all-unified.lang
mark_active firefox/best-browser.lang
mark_active firefox/campaign-trailhead.lang
mark_active firefox/channel/index.lang
mark_active firefox/facebookcontainer/index.lang
mark_active firefox/home-master.lang
mark_active firefox/installer-help.lang
mark_active firefox/mobile.lang
mark_active firefox/new/quantum.lang
mark_active firefox/new/trailhead.lang
mark_active firefox/nightly_firstrun.lang
mark_active firefox/products/lockwise.lang
mark_active firefox/profile-per-install.lang
mark_active firefox/sendto.lang
mark_active firefox/switch.lang
mark_active firefox/tracking-protection-tour.lang
mark_active firefox/welcome/page1.lang
mark_active firefox/welcome/page2.lang
mark_active firefox/whatsnew.lang
mark_active firefox/whatsnew_56.lang
mark_active firefox/whatsnew_57.lang
mark_active firefox/whatsnew_59.lang
mark_active firefox/whatsnew_61.lang
mark_active firefox/whatsnew_63.lang
mark_active firefox/whatsnew_66.lang
mark_active firefox/whatsnew_67.lang
mark_active firefox/whatsnew_67.0.5.lang
mark_active firefox/whatsnew_69.lang
mark_active firefox/whatsnew_70.lang 	
mark_active foundation/index.lang
mark_active mozorg/404.lang
mark_active mozorg/500.lang
mark_active mozorg/about-2019.lang
mark_active mozorg/browser-history.lang
mark_active mozorg/contribute/signup.lang
mark_active mozorg/home/index-quantum.lang
mark_active mozorg/internet-health.lang
mark_active mozorg/mission.lang
mark_active mozorg/plugincheck-update.lang
mark_active mozorg/products.lang
mark_active mozorg/technology.lang
mark_active mozorg/what-is-a-browser.lang
mark_active privacy/faq.lang
mark_active privacy/index.lang
mark_active privacy/principles.lang


# Add tags
add_tags firefox/all.lang
add_tags firefox/accounts-2019.lang
add_tags firefox/campaign.lang
add_tags firefox/channel/index.lang
add_tags firefox/features/independent.lang
add_tags firefox/features/index.lang
add_tags firefox/features/password-manager.lang
add_tags firefox/features/send-tabs.lang
add_tags firefox/nightly_whatsnew.lang
add_tags firefox/hub/home-quantum.lang
add_tags firefox/mobile.lang
add_tags firefox/new/quantum.lang
add_tags firefox/new/trailhead.lang
add_tags firefox/products/developer-quantum.lang
add_tags firefox/sendto.lang
add_tags firefox/tracking-protection-tour.lang
add_tags firefox/whatsnew.lang
add_tags firefox/whatsnew_66.lang
add_tags mozorg/about/history.lang
add_tags mozorg/about/manifesto.lang
add_tags mozorg/contribute/signup.lang
add_tags mozorg/home/index-quantum.lang
add_tags mozorg/internet-health/decentralization.lang
add_tags mozorg/internet-health/index.lang
add_tags mozorg/mission.lang
add_tags mozorg/newsletters.lang
add_tags mozorg/technology.lang
add_tags privacy/faq.lang
add_tags privacy/index.lang
