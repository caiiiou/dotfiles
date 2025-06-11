function run() {
	const MediaRemote = $.NSBundle.bundleWithPath('/System/Library/PrivateFrameworks/MediaRemote.framework/');
	MediaRemote.load
	
	const MRNowPlayingRequest = $.NSClassFromString('MRNowPlayingRequest');
	
	const appName = MRNowPlayingRequest.localNowPlayingPlayerPath.client.displayName;
	const infoDict = MRNowPlayingRequest.localNowPlayingItem.nowPlayingInfo;

	if (!infoDict) return "No Music Playing";
	
	const title = infoDict.valueForKey('kMRMediaRemoteNowPlayingInfoTitle');
	const artist = infoDict.valueForKey('kMRMediaRemoteNowPlayingInfoArtist');
	
	if(!title) return "No Music Playing";
	
	return `${title.js} — ${artist.js}`;
}
