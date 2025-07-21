## Ship FOSS apps to your ROMs
### Usage
1. Add `<name="android_vendor_oss-customization" remote="https://github.com/hrzndelta-experimentations" path="vendor/oss-customization" revision="main"/>` to your local_manifests
2. Sync the repo
3. Add `$(call inherit-product, vendor/oss-customization/oss-customization.mk)` to your device makefile
4. Build it!

### This repo included
- BreezyWeather (Freenet weather app)
- Lawnchair (Customisable launcher based on Launcher3)
- Lawnicons (Themed icon made by the devs at Lawnchair) (IzzyOnDroid)
- Smartspacer (Modifies your At a glance)
- Smartspacer plugins (Plugins for enabling weather and battery infos)
