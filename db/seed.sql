\c bookmarks_dev;

INSERT INTO
    bookmarks (
        name,
        url,
        category,
        is_favorite
    )
VALUES (
        'MDN',
        'https://developer.mozilla.org/en-US/',
        'educational',
        true
    ), (
        'Apartment Therapy',
        'https://www.apartmenttherapy.com',
        'inspirational',
        true
    ), (
        'DMV',
        'https://dmv.ny.gov',
        'adulting',
        true
    ), (
        'Google',
        'https://www.google.com',
        'search',
        false
    ), (
        'Amazon',
        'https://www.amazon.com',
        'shopping',
        false
    ), (
        'Twitter',
        'https://twitter.com',
        'social media',
        false
    ), (
        'Facebook',
        'https://www.facebook.com/',
        'social media',
        false
    ), (
        'Instagram',
        'https://www.instagram.com/',
        'social media',
        false
    ), (
        'Pinterest',
        'https://www.pinterest.com/',
        'inspirational',
        false
    ), (
        'Reddit',
        'https://www.reddit.com/',
        'social media',
        false
    ), (
        'YouTube',
        'https://www.youtube.com/',
        'educational',
        false
    ), (
        'Netflix',
        'https://www.netflix.com/',
        'entertainment',
        true
    ), (
        'Hulu',
        'https://www.hulu.com/',
        'entertainment',
        false
    ), (
        'Spotify',
        'https://www.spotify.com/',
        'music streaming',
        true
    ), (
        'Apple Music',
        'https://music.apple.com/',
        'music streaming',
        false
    ), (
        'Twitch',
        'https://www.twitch.tv/',
        'entertainment',
        false
    ), (
        'Discord',
        'https://discord.com/',
        'communication app',
        false
    ), (
        'Zoom',
        'https://zoom.us/',
        'communication app',
        false
    ), (
        'Slack',
        'https://slack.com/',
        'communication app',
        false
    ), (
        'Microsoft Teams',
        'https://www.microsoft.com/en-us/microsoft-teams/group-chat-software',
        'communication app',
        false
    ), (
        'Google Meet',
        'https://meet.google.com/',
        'communication app',
        false
    ), (
        'Skype',
        'https://www.skype.com/en/',
        'communication app',
        false
    ), (
        'WhatsApp',
        'https://www.whatsapp.com/',
        'communication app',
        false
    ), (
        'Signal',
        'https://signal.org/',
        'communication app',
        false
    ), (
        'Telegram',
        'https://telegram.org/',
        'communication app',
        false
    );

INSERT INTO
    reviews (
        bookmark_id,
        reviewer,
        title,
        content,
        rating
    )
VALUES (
        1,
        'Evan',
        'My Favorite',
        'This website crushes it when it comes to awesome explanations.',
        3
    ), (
        2,
        'Evan',
        'My Favorite',
        'This website crushes it when it comes to inspiring me.',
        3
    ), (
        2,
        'Juliana',
        'I Love Going Here',
        'I finally learned how to properly fold a fitted sheet.',
        5
    ), (
        2,
        'David',
        'Cool Site',
        'But I got way into adding decorative pillows everywhere.',
        1
    ), (
        2,
        'Mr. Mingo',
        'So Helpful',
        'I got some awesome recommendations for a ceiling fan and some spoons.',
        3
    ), (
        2,
        'Alison',
        'A lifesaver!',
        'Helped me get my stove cleaner than I ever imagiend possible!',
        4
    ), (
        3,
        'Hannah',
        'Insert Confetti Emoji Here',
        'I survived 6 hours at the DMV!',
        4
    ), (
        3,
        'Gabi',
        'My Friend Hannah',
        'Gets a discount if I leave a positive review, so here it is',
        5
    ), (
        4,
        'John Doe',
        'Great Search Engine',
        'I use Google for all my searches and it never disappoints me.',
        5
    ), (
        4,
        'Jane Doe',
        'Great Search Engine',
        'Google is the best search engine out there. It always gives me the results I need.',
        5
    ), (
        4,
        'John Smith',
        'Good Search Engine',
        E'Google is a good search engine. It\'s fast and reliable.',
        4
    ), (
        4,
        'Jane Smith',
        'Good Search Engine',
        E'Google is a good search engine. It\'s easy to use and has lots of features.',
        4
    ), (
        4,
        'John Johnson',
        'Decent Search Engine',
        E'Google is a decent search engine. It\'s not perfect but it gets the job done.',
        3
    ), (
        4,
        'Jane Johnson',
        'Decent Search Engine',
        E'Google is a decent search engine. It has its flaws but It\'s still pretty good.',
        3
    ), (
        4,
        'John Jackson',
        'Okay Search Engine',
        E'Google is an okay search engine. It\'s not my favorite but It\'s not bad either.',
        2
    ), (
        4,
        'Jane Jackson',
        'Okay Search Engine',
        E'Google is an okay search engine. It\'s not the best but It\'s not the worst either.',
        2
    ), (
        4,
        'John Brown',
        'Not a Fan',
        E'I\'m not a fan of Google. I prefer to use other search engines.',
        1
    ), (
        4,
        'Jane Brown',
        'Not a Fan',
        E'I\'m not a fan of Google. I find other search engines to be better.',
        1
    );