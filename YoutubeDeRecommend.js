
function wait(ms) {
    var start = new Date().getTime();
    var end = start;
    while (end < start + ms) {
        end = new Date().getTime();
    }
}

function getElementsByXPath(xpath) {
    let results = [];
    let query = document.evaluate(xpath, document,
        null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null);
    for (let i = 0, length = query.snapshotLength; i < length; ++i) {
        results.push(query.snapshotItem(i));
    }
    return results;
}

function scrollIt(height) {
    console.log("scrolling to: " + height);
    document.scrollingElement.scrollTo(0, height);
    setTimeout(scrollInitiate, 4000);
}

function scrollInitiate() {
    var numberOfItems = getElementsByXPath('//*[@id="contents"]/ytd-rich-item-renderer').length;
    console.log("We have items: " + numberOfItems);
    if (numberOfItems < 200) {
        scrollIt(document.scrollingElement.scrollHeight);
    }
}

function clickIt() {
    wait(2000);
    var notInterestedButton = getElementsByXPath('//*[@id="items"]/ytd-menu-service-item-renderer[4]/paper-item/yt-icon')[0];
    console.log("Click the button." + notInterestedButton.wait());
    notInterestedButton.click();
}

function iAmNotInterested() {
    console.log("Starting button job.")
    var activators = getElementsByXPath('//div[@id="dismissable" and contains(@class, "style-scope ytd-rich-grid-video-renderer")]/div[@id="details"]/div[@id="menu"]/ytd-menu-renderer/yt-icon-button/button/yt-icon');
    for (let index = 0; index < activators.length; index++) {
        const a = activators[index];
        console.log("Processing " + index);
        a.scrollIntoView();
        a.click();
        clickIt();
    }
}

function initiate() {
    setTimeout(scrollInitiate(), 0);
    setTimeout(iAmNotInterested, 60000);
}



