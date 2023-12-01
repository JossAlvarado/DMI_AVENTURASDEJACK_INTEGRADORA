const games = [
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
    {
        PlayerID: generateRandom(1,10),
        title: "game: 0, level: 0",
        startAt:  Date.now(),
        endsAat: Date.now() + generateRandom(5000,300000),
        score: generateRandom(0, 1000000)
    },
]


function generateRandom(min = 0, max = 100){
    let diference = max -min;

    let rand = Math.random();

    rand = Math.floor( rand * diference)

    rand = rand + min;

    return rand;
}
export default games