function run () {
	const MediaRemote = $.NSBundle.bundleWithPath('/System/Library/PrivateFrameworks/MediaRemote.framework/');
	MediaRemote.load
	const MRNowPlayingRequest = $.NSClassFromString('MRNowPlayingRequest');

	const infoDict = MRNowPlayingRequest.localNowPlayingItem.nowPlayingInfo;

	const isPlaying = infoDict.valueForKey('kMRMediaRemoteNowPlayingInfoPlaybackRate').js == 1;

	return isPlaying ? 1 : 0;
}	
