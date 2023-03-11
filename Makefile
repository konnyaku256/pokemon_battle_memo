# ターゲットを指定しなかったときは help を実行する
.DEFAULT_GOAL := help

FLAVOR = development
DEVICE_ID = 0
EMULATOR_ID = 0
APP_VERSION = 1.0.0

# makeコマンドに数字を入れるとコマンド一覧に表示されないので注意
.PHONY: help
help: ## make で使用可能なコマンド一覧を表示します
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' ${MAKEFILE_LIST} | awk 'BEGIN {FS = ":.*?## "}; { \
		printf "\033[36m%-30s\033[0m %s\n", $$1, $$2 \
	}'

# GraphQL系
.PHONY: generate-dart-code
generate-dart-code: ## GraphQLスキーマやJsonSerializableクラスからDartコードを生成します
	flutter pub run build_runner build --delete-conflicting-outputs

# Flutter系
.PHONY: lint
lint: ## FlutterのLinterを実行します
	flutter analyze

.PHONY: lint-auto-fix
lint-auto-fix: ## FlutterのLinterを実行し、自動修正します
	dart fix --apply

.PHONY: update-app-icon
update-app-icon: ## アプリのアイコンを更新します（assets/icon.png）
	flutter pub run flutter_launcher_icons:main

.PHONY: generate-localization
generate-localization: ## arbファイルから多言語対応コードを生成します（lib/config/l10n/text_ja.arb）
	flutter gen-l10n

.PHONY: show-emulators
show-emulators: ## Android・iOSのエミュレータ一覧を表示します
	flutter emulators

.PHONY: launch-emulator
launch-emulator: ## エミュレータを起動します（EMULATOR_ID）
	flutter emulators --launch $(EMULATOR_ID)

.PHONY: show-devices
show-devices: ## Android・iOSの実機デバイス一覧を表示します
	flutter devices

.PHONY: run-app
run-app: ## アプリを実行します（DEVICE_ID）
	flutter run --flavor $(FLAVOR) -d $(DEVICE_ID)

.PHONY: run-app-release-mode
run-app-release-mode: ## アプリを本番相当のリリースモード（iOSエミュレータは非対応）で実行します（DEVICE_ID）
	flutter run --release --flavor production -d $(DEVICE_ID)

.PHONY: install-app
install-app: ## アプリをインストールします（DEVICE_ID）
	flutter install -d $(DEVICE_ID)

.PHONY: build-ios
build-ios: ## iOSアプリをリリースビルドします
	flutter build ios --release --flavor production

.PHONY: build-android
build-android: ## Androidアプリをリリースビルドします
	flutter build appbundle --release --flavor production

# Android App Bundleはストア公開用にのみ使用する
# .PHONY: flutter-build-android-appbundle
# flutter-build-android-appbundle:
# 	flutter build appbundle

.PHONY: release-app
release-app: ## アプリをリリースします（APP_VERSION）
	git tag -a $(APP_VERSION) -m 'アプリバージョン v$(APP_VERSION) のタグを作成しました' && \
	git push origin $(APP_VERSION)