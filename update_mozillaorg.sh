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
mark_active firefox/all-unified.lang
mark_active firefox/best-browser.lang
mark_active firefox/browsers.lang
mark_active firefox/campaign-trailhead.lang
mark_active firefox/channel/index.lang
mark_active firefox/compare.lang
mark_active firefox/compare/chrome.lang
mark_active firefox/compare/edge.lang
mark_active firefox/compare/ie.lang
mark_active firefox/compare/opera.lang
mark_active firefox/compare/safari.lang
mark_active firefox/enterprise/index.lang
mark_active firefox/facebookcontainer/index.lang
mark_active firefox/features/index.lang
mark_active firefox/home-master.lang
mark_active firefox/installer-help.lang
mark_active firefox/mobile-2019.lang
mark_active firefox/new/quantum.lang
mark_active firefox/new/trailhead.lang
mark_active firefox/nightly_firstrun.lang
mark_active firefox/products.lang
mark_active firefox/products/lockwise.lang
mark_active firefox/profile-per-install.lang
mark_active firefox/sendto.lang
mark_active firefox/set-default-thanks.lang
mark_active firefox/switch.lang
mark_active firefox/welcome/page1.lang
mark_active firefox/welcome/page2.lang
mark_active firefox/welcome/page3.lang
mark_active firefox/welcome/page4.lang
mark_active firefox/welcome/page5.lang
mark_active firefox/welcome/page6.lang
mark_active firefox/welcome/page7.lang
mark_active firefox/whatsnew.lang
mark_active firefox/whatsnew_70.lang 	
mark_active firefox/whatsnew_71.lang 
mark_active firefox/whatsnew_73.lang 
mark_active firefox/whatsnew_74.lang 
mark_active firefox/whatsnew_75.lang 
mark_active firefox/whatsnew_76.lang 
mark_active firefox/windows-64-bit.lang
mark_active mozorg/404.lang
mark_active mozorg/500.lang
mark_active mozorg/about-2019.lang
mark_active mozorg/about/governance/policies/community-hotline.lang
mark_active mozorg/about/governance/policies/participation.lang
mark_active mozorg/about/governance/policies/reporting.lang
mark_active mozorg/browser-history.lang
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
add_tags firefox/accounts-2019.lang
add_tags firefox/campaign.lang
add_tags firefox/campaign-trailhead.lang
add_tags firefox/channel/index.lang
add_tags firefox/products/developer-quantum.lang
add_tags firefox/features/independent.lang
add_tags firefox/features/index.lang
add_tags firefox/features/password-manager.lang
add_tags firefox/features/send-tabs.lang
add_tags firefox/nightly_whatsnew.lang
add_tags firefox/hub/home-quantum.lang
add_tags firefox/new/quantum.lang
add_tags firefox/new/trailhead.lang
add_tags firefox/products/developer-quantum.lang
add_tags firefox/sendto.lang
add_tags firefox/whatsnew.lang
add_tags firefox/whatsnew_73.lang 
add_tags mozorg/404.lang
add_tags mozorg/500.lang
add_tags mozorg/about/manifesto.lang
add_tags mozorg/home/index-quantum.lang
add_tags mozorg/internet-health/decentralization.lang
add_tags mozorg/internet-health/index.lang
add_tags mozorg/mission.lang
add_tags mozorg/newsletters.lang
add_tags mozorg/technology.lang
add_tags privacy/faq.lang
add_tags privacy/index.lang
