function getBulgariaTime() {
    const now = new Date();
    const options = {
        timeZone: 'Europe/Sofia',
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
        hour12: true // :3
    };
    return new Intl.DateTimeFormat('en-US', options).format(now);
}

function updateTime() {
    document.getElementById('ltime').innerText = getBulgariaTime();
}

updateTime();

setInterval(updateTime, 1000);
