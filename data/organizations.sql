INSERT INTO organization (
    organization_name,
    organization_type_id,
    test_document_id,
    game_project_id,
    organization_description
)
VALUES (
        'Mojang Studios',
        3,
        NULL,
        2,
        'Mojang Studios is a Swedish video game developer based in Stockholm. '
            'It was founded by the independent video game designer Markus Persson '
            'in 2009 as Mojang Specifications for the development and '
            'release of Persson\'s sandbox and survival video game Minecraft. '
            'The studio inherited its name from a previous video game venture '
            'Persson had left two years prior. Following the game\'s release, '
            'Persson, in conjunction with Jakob Porsér, incorporated the business '
            'as Mojang AB in late 2010 and hired Carl Manneh as the company\'s '
            'chief executive officer. Other early hires included Daniel Kaplan '
            'and Jens Bergensten.'
       ),
       (
        'Xbox Game Studios',
        2,
        NULL,
        2,
        'Xbox Game Studios is an American video game publisher and division of Microsoft '
            'based in Redmond, Washington. It was established in March 2000, '
            'spun out from an internal Games Group, for the development and '
            'publishing of video games for Microsoft Windows. It has since expanded '
            'to include games and other interactive entertainment for the namesake '
            'Xbox platforms, Windows Mobile and other mobile platforms, and web-based '
            'portals. As the studio grew, it has acquired and relinquished ownership '
            'of several other studios, and is the parent organization of twenty-three '
            'other studios.'
       ),
       (
        'Tetris Testing team',
        1,
        3,
        1,
        'Empty for now'
       ),
       (
        'Some New Studio',
        3,
        NULL,
        NULL,
        'Newly created game studio that have no games yet.'
       );
