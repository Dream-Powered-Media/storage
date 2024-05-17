INSERT INTO service_media (
        media_id,
        media_name,
        media_link,
        media_type,
        author_link,
        author_id
) VALUES (
        gen_random_uuid(),
        'Документалка про автомобили',
        'https://www.youtube.com/watch?v=2gAVESpGpqs&list=PLybBpPCOgFt4IANUx-EvScY8W9mbGpGYo&index=5',
        'video',
        'https://www.youtube.com/@AsafevStas',
        null
), (
        gen_random_uuid(),
        'Фанфик по Гарри Поттеру',
        'https://ficbook.net/readfic/5378721?premiumVisit=1',
        'text',
        'https://ficbook.net/authors/38513',
        null
), (
        gen_random_uuid(),
        'Русский рэп Xassa - Animal Planet',
        'https://music.yandex.ru/album/30663704/track/124713848',
        'audio',
        'https://music.yandex.ru/artist/7228674',
        null
), (
        gen_random_uuid(),
        'Фильм Операция колибри',
        'https://hd.kinopoisk.ru/?playingContentId=4ac95757654e8b5eb4c3d03b41c32c95&rt=4ac95757654e8b5eb4c3d03b41c32c95&watch=',
        'video',
        'https://www.kinopoisk.ru/name/234969/',
        null
);
