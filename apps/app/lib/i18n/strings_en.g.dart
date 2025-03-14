///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsAppEn app = TranslationsAppEn.internal(_root);
	late final TranslationsErrorEn error = TranslationsErrorEn.internal(_root);
	late final TranslationsGoodsEn goods = TranslationsGoodsEn.internal(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn.internal(_root);
	late final TranslationsUserEn user = TranslationsUserEn.internal(_root);
}

// Path: app
class TranslationsAppEn {
	TranslationsAppEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAppOnboardPageEn onboardPage = TranslationsAppOnboardPageEn.internal(_root);
	late final TranslationsAppPostsPageEn postsPage = TranslationsAppPostsPageEn.internal(_root);
	late final TranslationsAppPostEditPageEn postEditPage = TranslationsAppPostEditPageEn.internal(_root);
	late final TranslationsAppBottomNavBarEn bottomNavBar = TranslationsAppBottomNavBarEn.internal(_root);
}

// Path: error
class TranslationsErrorEn {
	TranslationsErrorEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorErrorPageEn errorPage = TranslationsErrorErrorPageEn.internal(_root);
	late final TranslationsErrorMessageEn message = TranslationsErrorMessageEn.internal(_root);
}

// Path: goods
class TranslationsGoodsEn {
	TranslationsGoodsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsGoodsGoodsPageEn goodsPage = TranslationsGoodsGoodsPageEn.internal(_root);
	String goodsSortKey({required GoodsSortKey context}) {
		switch (context) {
			case GoodsSortKey.createdAt:
				return 'Created at';
			case GoodsSortKey.name:
				return 'Name';
			case GoodsSortKey.price:
				return 'Price';
		}
	}
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingsSettingsPageEn settingsPage = TranslationsSettingsSettingsPageEn.internal(_root);
	late final TranslationsSettingsAccountPageEn accountPage = TranslationsSettingsAccountPageEn.internal(_root);
}

// Path: user
class TranslationsUserEn {
	TranslationsUserEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsUserUserPageEn userPage = TranslationsUserUserPageEn.internal(_root);
	late final TranslationsUserOnboardPageEn onboardPage = TranslationsUserOnboardPageEn.internal(_root);
}

// Path: app.onboardPage
class TranslationsAppOnboardPageEn {
	TranslationsAppOnboardPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get firstQuestion => 'Do you use the app?';
	String get welcome => 'Welcome!';
	String get seeYou => 'See you again';
	String get restartCaption => 'Please restart the application if you wish to use it';
}

// Path: app.postsPage
class TranslationsAppPostsPageEn {
	TranslationsAppPostsPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAppPostsPageTabsEn tabs = TranslationsAppPostsPageTabsEn.internal(_root);
}

// Path: app.postEditPage
class TranslationsAppPostEditPageEn {
	TranslationsAppPostEditPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAppPostEditPageSensitiveWarnMessageEn sensitiveWarnMessage = TranslationsAppPostEditPageSensitiveWarnMessageEn.internal(_root);
	String get choices => 'Choices';
	String get submit => 'Submit';
	late final TranslationsAppPostEditPageTitleEn title = TranslationsAppPostEditPageTitleEn.internal(_root);
	late final TranslationsAppPostEditPageChoicesAddBottomSheetEn choicesAddBottomSheet = TranslationsAppPostEditPageChoicesAddBottomSheetEn.internal(_root);
}

// Path: app.bottomNavBar
class TranslationsAppBottomNavBarEn {
	TranslationsAppBottomNavBarEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get search => 'Search';
	String get settings => 'Settings';
}

// Path: error.errorPage
class TranslationsErrorErrorPageEn {
	TranslationsErrorErrorPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Error';
}

// Path: error.message
class TranslationsErrorMessageEn {
	TranslationsErrorMessageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorMessageImpossibleOperationEn impossibleOperation = TranslationsErrorMessageImpossibleOperationEn.internal(_root);
}

// Path: goods.goodsPage
class TranslationsGoodsGoodsPageEn {
	TranslationsGoodsGoodsPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Goods';
	String get layout => 'Layout';
	String price({required num price}) => '${NumberFormat.simpleCurrency(locale: 'en').format(price)}';
}

// Path: settings.settingsPage
class TranslationsSettingsSettingsPageEn {
	TranslationsSettingsSettingsPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	late final TranslationsSettingsSettingsPageAccountEn account = TranslationsSettingsSettingsPageAccountEn.internal(_root);
	late final TranslationsSettingsSettingsPageLayoutEn layout = TranslationsSettingsSettingsPageLayoutEn.internal(_root);
	late final TranslationsSettingsSettingsPageHelpEn help = TranslationsSettingsSettingsPageHelpEn.internal(_root);
}

// Path: settings.accountPage
class TranslationsSettingsAccountPageEn {
	TranslationsSettingsAccountPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Account';
	late final TranslationsSettingsAccountPageLinkEn link = TranslationsSettingsAccountPageLinkEn.internal(_root);
	late final TranslationsSettingsAccountPageOtherEn other = TranslationsSettingsAccountPageOtherEn.internal(_root);
	late final TranslationsSettingsAccountPageLeaveConfirmDialogEn leaveConfirmDialog = TranslationsSettingsAccountPageLeaveConfirmDialogEn.internal(_root);
}

// Path: user.userPage
class TranslationsUserUserPageEn {
	TranslationsUserUserPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Title';
}

// Path: user.onboardPage
class TranslationsUserOnboardPageEn {
	TranslationsUserOnboardPageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get start => 'Start';
	String get startCaption => 'For first-time users, click here';
	String get signInWithGoogle => 'Sign in with Google';
	String get signInWithApple => 'Sign in with Apple';
}

// Path: app.postsPage.tabs
class TranslationsAppPostsPageTabsEn {
	TranslationsAppPostsPageTabsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get myPosts => 'My posts';
	String get trends => 'Trends';
	String get newPost => 'New post';
}

// Path: app.postEditPage.sensitiveWarnMessage
class TranslationsAppPostEditPageSensitiveWarnMessageEn {
	TranslationsAppPostEditPageSensitiveWarnMessageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get message => 'If you select "Make public and solicit comments," your post will be made public to other users.\n\nPlease refrain from posting content that falls under the following categories:';
	List<String> get clauseItems => [
		'Posts that include personal information',
		'Posts that include sensitive content',
		'Posts that criticize anonymous individuals/groups',
		'Posts that are defamatory',
	];
}

// Path: app.postEditPage.title
class TranslationsAppPostEditPageTitleEn {
	TranslationsAppPostEditPageTitleEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get hintText => 'What are you unsure about?';
}

// Path: app.postEditPage.choicesAddBottomSheet
class TranslationsAppPostEditPageChoicesAddBottomSheetEn {
	TranslationsAppPostEditPageChoicesAddBottomSheetEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get add => 'Add';
}

// Path: error.message.impossibleOperation
class TranslationsErrorMessageImpossibleOperationEn {
	TranslationsErrorMessageImpossibleOperationEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get notAuth => 'Not auth';
	String get notLinked => 'Not linked';
}

// Path: settings.settingsPage.account
class TranslationsSettingsSettingsPageAccountEn {
	TranslationsSettingsSettingsPageAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Account';
	String get account => 'Account';
}

// Path: settings.settingsPage.layout
class TranslationsSettingsSettingsPageLayoutEn {
	TranslationsSettingsSettingsPageLayoutEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get haed => 'Layout';
	String get uiStyle => 'UI Style';
	String get themeMode => 'ThemeMode';
	String get colorTheme => 'Colors';
}

// Path: settings.settingsPage.help
class TranslationsSettingsSettingsPageHelpEn {
	TranslationsSettingsSettingsPageHelpEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Help';
	String get howToUse => 'HowToUse';
	String get contactUs => 'Contact us';
	String get developperTwitter => 'Developper';
	String get privacyPollicy => 'PrivacyPollicy';
	String get licencse => 'License';
}

// Path: settings.accountPage.link
class TranslationsSettingsAccountPageLinkEn {
	TranslationsSettingsAccountPageLinkEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Account link';
	String get google => 'Google';
	String get apple => 'Apple';
}

// Path: settings.accountPage.other
class TranslationsSettingsAccountPageOtherEn {
	TranslationsSettingsAccountPageOtherEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get head => 'Other';
	String get logout => 'Logout';
	String get leave => 'Leave';
}

// Path: settings.accountPage.leaveConfirmDialog
class TranslationsSettingsAccountPageLeaveConfirmDialogEn {
	TranslationsSettingsAccountPageLeaveConfirmDialogEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Leave?';
	String get body => 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.onboardPage.firstQuestion': return 'Do you use the app?';
			case 'app.onboardPage.welcome': return 'Welcome!';
			case 'app.onboardPage.seeYou': return 'See you again';
			case 'app.onboardPage.restartCaption': return 'Please restart the application if you wish to use it';
			case 'app.postsPage.tabs.myPosts': return 'My posts';
			case 'app.postsPage.tabs.trends': return 'Trends';
			case 'app.postsPage.tabs.newPost': return 'New post';
			case 'app.postEditPage.sensitiveWarnMessage.message': return 'If you select "Make public and solicit comments," your post will be made public to other users.\n\nPlease refrain from posting content that falls under the following categories:';
			case 'app.postEditPage.sensitiveWarnMessage.clauseItems.0': return 'Posts that include personal information';
			case 'app.postEditPage.sensitiveWarnMessage.clauseItems.1': return 'Posts that include sensitive content';
			case 'app.postEditPage.sensitiveWarnMessage.clauseItems.2': return 'Posts that criticize anonymous individuals/groups';
			case 'app.postEditPage.sensitiveWarnMessage.clauseItems.3': return 'Posts that are defamatory';
			case 'app.postEditPage.choices': return 'Choices';
			case 'app.postEditPage.submit': return 'Submit';
			case 'app.postEditPage.title.hintText': return 'What are you unsure about?';
			case 'app.postEditPage.choicesAddBottomSheet.add': return 'Add';
			case 'app.bottomNavBar.home': return 'Home';
			case 'app.bottomNavBar.search': return 'Search';
			case 'app.bottomNavBar.settings': return 'Settings';
			case 'error.errorPage.title': return 'Error';
			case 'error.message.impossibleOperation.notAuth': return 'Not auth';
			case 'error.message.impossibleOperation.notLinked': return 'Not linked';
			case 'goods.goodsPage.title': return 'Goods';
			case 'goods.goodsPage.layout': return 'Layout';
			case 'goods.goodsPage.price': return ({required num price}) => '${NumberFormat.simpleCurrency(locale: 'en').format(price)}';
			case 'goods.goodsSortKey': return ({required GoodsSortKey context}) {
				switch (context) {
					case GoodsSortKey.createdAt:
						return 'Created at';
					case GoodsSortKey.name:
						return 'Name';
					case GoodsSortKey.price:
						return 'Price';
				}
			};
			case 'settings.settingsPage.title': return 'Settings';
			case 'settings.settingsPage.account.head': return 'Account';
			case 'settings.settingsPage.account.account': return 'Account';
			case 'settings.settingsPage.layout.haed': return 'Layout';
			case 'settings.settingsPage.layout.uiStyle': return 'UI Style';
			case 'settings.settingsPage.layout.themeMode': return 'ThemeMode';
			case 'settings.settingsPage.layout.colorTheme': return 'Colors';
			case 'settings.settingsPage.help.head': return 'Help';
			case 'settings.settingsPage.help.howToUse': return 'HowToUse';
			case 'settings.settingsPage.help.contactUs': return 'Contact us';
			case 'settings.settingsPage.help.developperTwitter': return 'Developper';
			case 'settings.settingsPage.help.privacyPollicy': return 'PrivacyPollicy';
			case 'settings.settingsPage.help.licencse': return 'License';
			case 'settings.accountPage.title': return 'Account';
			case 'settings.accountPage.link.head': return 'Account link';
			case 'settings.accountPage.link.google': return 'Google';
			case 'settings.accountPage.link.apple': return 'Apple';
			case 'settings.accountPage.other.head': return 'Other';
			case 'settings.accountPage.other.logout': return 'Logout';
			case 'settings.accountPage.other.leave': return 'Leave';
			case 'settings.accountPage.leaveConfirmDialog.title': return 'Leave?';
			case 'settings.accountPage.leaveConfirmDialog.body': return 'Are you sure you want to cancel your membership? \\Ўn this operation cannot be undone.';
			case 'user.userPage.title': return 'Title';
			case 'user.onboardPage.start': return 'Start';
			case 'user.onboardPage.startCaption': return 'For first-time users, click here';
			case 'user.onboardPage.signInWithGoogle': return 'Sign in with Google';
			case 'user.onboardPage.signInWithApple': return 'Sign in with Apple';
			default: return null;
		}
	}
}

