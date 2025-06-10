function run() {
	const MediaRemote = $.NSBundle.bundleWithPath('/System/Library/PrivateFrameworks/MediaRemote.framework/');
	MediaRemote.load

	const MRNowPlayingRequest = $.NSClassFromString('MRNowPlayingRequest');
	const infoDict = MRNowPlayingRequest.localNowPlayingItem?.nowPlayingInfo;

	if (!infoDict) return JSON.stringify({ label: "No Music Playing", state: "Paused" });

	const title = infoDict.valueForKey('kMRMediaRemoteNowPlayingInfoTitle')?.js;
	const artist = infoDict.valueForKey('kMRMediaRemoteNowPlayingInfoArtist')?.js;

	if (!title || !artist) return JSON.stringify({ label: "No Music Playing", state: "Paused" });

	const isPlaying = infoDict.valueForKey('kMRMediaRemoteNowPlayingInfoPlaybackRate')?.js == 1;
	const state = isPlaying ? "Playing" : "Paused";
	const label = `${artist} - ${title}`;

	return JSON.stringify({ label: label, state: state });
}
