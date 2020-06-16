%hook TreesTheme
- (id)actionColor {
    return [UIColor colorWithRed:255.0/255.0 green:20.0/255.0 blue:147.0/255.0 alpha:255.0/255.0];
} 
- (id)activeColor {
    return [UIColor colorWithRed:84.0/255.0 green:255.0/255.0 blue:159.0/255.0 alpha:255.0/255.0];
} 
- (id)bodyColor {
    return [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:255.0/255.0];
} 
- (id)bodyTextColor {
    return [UIColor colorWithRed:255.0/255.0 green:20.0/255.0 blue:147.0/255.0 alpha:255.0/255.0];
} 
- (id)buttonColor {
    return [UIColor colorWithRed:230.0/255.0 green:148.0/255.0 blue:254.0/255.0 alpha:255.0/255.0];
} 
- (id)buttonHighlightTextColor {
    return [UIColor colorWithRed:112.0/255.0 green:252.0/255.0 blue:2.0/255.0 alpha:255.0/255.0];
} 
- (id)buttonTextColor {
    return [UIColor colorWithRed:255.0/255.0 green:48.0/255.0 blue:48.0/255.0 alpha:255.0/255.0];
} 
- (id)canvasColor {
    return [UIColor colorWithRed:115.0/255.0 green:17.0/255.0 blue:207.0/255.0 alpha:255.0/255.0];
} 
- (id)cellHighlightColor {
    return [UIColor colorWithRed:84.0/255.0 green:255.0/255.0 blue:159.0/255.0 alpha:255.0/255.0];
} 
- (id)dimmerColor {
    return [UIColor colorWithRed:144.0/255.0 green:156.0/255.0 blue:254.0/255.0 alpha:255.0/255.0];
} 
- (id)fieldColor {
    return [UIColor colorWithRed:164.0/255.0 green:154.0/255.0 blue:254.0/255.0 alpha:255.0/255.0];
} 
- (id)flairTextColor {
    return [UIColor colorWithRed:45.0/255.0 green:107.0/255.0 blue:146.0/255.0 alpha:255.0/255.0];
} 
- (id)highlightColor {
    return [UIColor colorWithRed:245.0/255.0 green:255.0/255.0 blue:137.0/255.0 alpha:255.0/255.0];
} 
- (id)inactiveColor {
    return [UIColor colorWithRed:255.0/255.0 green:127.0/255.0 blue:0.0/255.0 alpha:255.0/255.0];
} 
- (id)lineColor {
    return [UIColor colorWithRed:115.0/255.0 green:17.0/255.0 blue:207.0/255.0 alpha:255.0/255.0];
} 
- (id)linkTextColor {
    return [UIColor colorWithRed:135.0/255.0 green:129.0/255.0 blue:153.0/255.0 alpha:255.0/255.0];
} 
- (id)listBackgroundColor {
    return [UIColor colorWithRed:102.0/255.0 green:51.0/255.0 blue:0.0/255.0 alpha:255.0/255.0];
} 
- (id)loadingPlaceHolderColor {
    return [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:51.0/255.0 alpha:255.0/255.0];
} 
- (id)metaTextColor {
    return [UIColor colorWithRed:84.0/255.0 green:255.0/255.0 blue:159.0/255.0 alpha:255.0/255.0];
} 
- (id)navIconColor {
    return [UIColor colorWithRed:81.0/255.0 green:1.0/255.0 blue:149.0/255.0 alpha:255.0/255.0];
} 
- (id)shareSheetDimmerColor {
    return [UIColor colorWithRed:117.0/255.0 green:1.0/255.0 blue:146.0/255.0 alpha:255.0/255.0];
} 
- (id)toastColor {
    return [UIColor colorWithRed:112.0/255.0 green:2.0/255.0 blue:147.0/255.0 alpha:255.0/255.0];
} 
%end

%hook ThemeManager
- (unsigned long long)lightThemeSetting {
    return 3;
} 
%end

%hook AppSettings
- (unsigned long long)defaultFeedMode {
    return 2;
} 
- (bool)isBetaTester {
    return 1;
} 
%end

%hook User
- (bool)hasPremium {
    return 1;
} 
%end

%hook AdPost
- (bool)isHidden {
    return 1;
} 
%end

%hook OrbitLoaderView
- (void)setHidden:(bool)arg1 {
    arg1 = 1;
    %orig;
} 
%end

%hook TexturePopularFeedViewController
- (id)initWithPresenter:(id)arg1 delegator:(id)arg2 navigator:(id)arg3 {
    arg1 = NULL;
    arg2 = NULL;
    arg3 = NULL;
    return %orig;
} 
%end

%hook TexturePopularFeedViewController
- (id)popularPresenter {
    return NULL;
} 
%end

%hook TexturePopularFeedViewController
- (void)handleAppDidEnterBackgroundWhenViewControllerIsOnTheTop {
} 
%end

%hook AccountSettings
- (bool)hasUserAcceptedNSFWFor:(id)arg1 {
    return 1;
} 
%end

%hook SubredditChannel
- (bool)isSubredditNSFW {
    return 0;
} 
%end

%hook SubredditChannelHeader
- (bool)isSubredditNSFW {
    return 0;
} 
%end

%hook Contact
- (bool)profileNSFW {
    return %orig;
} 
%end

%hook ChatMessage
- (bool)isProfileNSFW {
    return %orig;
} 
%end

