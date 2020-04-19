module.exports = {
	// Developer Configs
	"system": {
		"config_version": "1.0.0",   // version of this file, version increase if change values from previously config
		"language": "en",            // available: en = English / it = Italian
		"raspberry": "disabled",     // if you use raspbian this fix automatically common issues
		"ui": "disabled",            // enabled/disabled only if you work at social-manager-tools GUI
		"terminal_colors": "enabled" // enabled/disabled if you want colors in windows power shell/cmd, mac console or linux terminal
	},

	// Instagram Account
	"account": {
		"username": "ptkdev",   // instagram nickname
		"password": "password", // instagram password
		"pin_method": "auto"    // 2FA: method for receive pin (auto: first authenticator if is enabled and after sms)
	},

	// Set Bot Mode, available:
	// likemode_classic            - select random hashtag from config list and like 1 random photo (of last 20)
	// likemode_realistic          - select random hashtag from config list, like fast 10-12 photo and sleep 15-20min
	// likemode_realistic_location - select random gps-location from config list, like fast 10-12 photo and sleep 15-20min
	// likemode_realistic_timeline - like fast 10-12 photo from your timeline and sleep 15-20min
	// likemode_superlike          - select random hashtag from config list and like 3 random photo of same user
	// likemode_superlike_location - select random gps-location from config list and like 3 random photo of same user
	// likemode_competitor_users   - select account, select random followers, like 10-12 photo and sleep 15-20min
	// commentmode_classic         - leave a comment under the photo via hashtag
	// commentmode_location        - leave a comment under the photo via gps-location
	// fdfmode_classic             - follow 30 users, and defollow the first followed at 31 follow, follow 1 (in loop)
	// fdfmode_classic_location    - select random gps-location, follow 30 users, and defollow the first followed at 31 follow, follow 1 (in loop)
	//
	// Modes details: http://docs.socialmanager.tools/igbot/installation/modes
	// Multi account: http://docs.socialmanager.tools/igbot/installation/multiaccount
	"bot_mode": "likemode_realistic", // this is NOT array. 1 mode is allowed

	// BOT Configs
	// [WORK] likemode_classic          - select random hashtag from config list and like 1 random photo (of last 20) | 400-600 like/day.
	// [WORK] likemode_realistic        - select random hashtag from config list, like fast 10-12 photo and sleep 15-20min. Sleep at night
	// [WORK] likemode_superlike        - select random hashtag from config list and like 3 random photo of same user | 400-600 like/day.
	// [WORK] likemode_competitor_users - select account, select random followers, like 10-12 photo and sleep 15-20min.
	// [WORK] comment_mode              - leave a comment under the photo via hashtag.
	// [WORK] fdfmode_classic           - follow 30 users, and defollow the first followed at 31 follow (in loop). This method is not detected from socialblade. ~1h | 300/300 follow-defollow/day.
	// [WORK] direct_new_followers      - send direct message to new followers
	"bot_mode": "likemode_realistic",
	"bot_likeday_min": 700,      // work in all likemode_*
	"bot_likeday_max": 800,      // work in all likemode_*. In 2018 limit instagram is 1000/day
	"bot_sleep_night": false,    // if you need stop bot in night
	"bot_start_sleep": "7:00",   // sleep from 00:00 to 7:00 am, work in likemode_realistic, comment_mode, likemode_superlike and likemode_competitor_users
	"bot_superlike_n": 3,        // superlike number of likes for user
	"bot_followday": 300,        // number of follow-defollow user/day, work in fdfmode_classic. In 2018 limit instagram is 500/day
	"bot_followrotate": 30,      // follow 30 users, and defollow the first followed at 31 follow (in loop), work in fdfmode_classic | If is 0 defollow all followed previously by bot
	"bot_userwhitelist": ["user1", "user2", "user3"],   // usernames without @ | don't defollow this users on follow-defollow mode, work in fdfmode_classic
	"comment_mode": {
		"comments": {
			"type": "array",
			"source": ["comment1", "comment2", "comment3"],
		}
	},
	"likemode_competitor_users": {
		"account": "user_nickname" // without @
	},
	// direct config
	"bot_direct_pause": 300, // in seconds
	"bot_direct_follower_from": 24, // how many hours follow you
	"bot_direct_message": `Thanks for follower!`,

	// Puppeteer Configs
	"chrome_headless": true,
	"chrome_devtools": false,
	"chrome_options": ["--disable-gpu", "--no-sandbox", "--window-size=1024x768"],
	"executable_path": "", // example for Mac OS: /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome

	// DATABASES
	"fdfdatabase_path": "./databases/fdf.db", // databases with username of followed users with follodefollow mode
	"followersdb_path": "./databases/followers.db", // databases with username of followers
	"logdb_path": "./databases/logs.db",      // logs in sqllite database for better report

	// LOGS
	"log": {
		"path": {
			"pin": "./configs/loginpin.txt",
			"debug_log": "./logs/debug.log",
			"error_log": "./logs/errors.log",
			"screenshots": "./logs/screenshots/",
		},
		"screenshot": "disabled",  // enabled/disabled screenshot in logs/screenshots folder
		"debug": "enabled",        // enabled/disabled all logs with tag debug
		"info": "enabled",         // enabled/disabled all logs with tag info
		"warning": "enabled",      // enabled/disabled all logs with tag warning
		"errors": "enabled",       // enabled/disabled all logs with tag errors
	}
};