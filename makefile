DATE_NOW:=`date +%Y%m%d.%H%M`
DATE:=`date +%d-%m-%Y`
VERSION:=`cider version`
APP_NAME:=AbuTest
PATH_IPA:=./build/ios/ipa/abuTest.ipa
PATH_APK:=./build/app/outputs/flutter-apk

ifeq ($(OS),Windows_NT)
	SPLIT_DEBUG_INFO:=.\build\split-debug-info-logs
else
	SPLIT_DEBUG_INFO:=./build/split-debug-info-logs
endif

generate:
	fvm spawn 3.16.0 pub run build_runner build --delete-conflicting-outputs

get:
	fvm spawn 3.16.0 pub get

run:
	fvm spawn 3.16.0 run

apk:
	fvm spawn 3.16.0 build apk \
		--release \
		-v
		
apk-open: apk
	mv $(PATH_APK)/app-dev-release.apk $(PATH_APK)/$(APP_NAME)-v$(VERSION)-$(DATE_NOW).apk
	open $(PATH_APK)/