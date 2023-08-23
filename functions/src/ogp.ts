import * as functions from "firebase-functions";

export const createOgp = functions.https.onRequest(async (req, res) => {
    const path = req.path.split("/")[1];
    console.log('🐯 これはパス', path);

    let title: string;
    let description: string;
    let image: string;

    switch (path) {
        case "blue":
            title = "青色";
            description = "青色、説明";
            image = "https://firebasestorage.googleapis.com/v0/b/test-blaze-2e7f0.appspot.com/o/00ffff.png?alt=media&token=6f855c13-52b1-480c-a74e-e66ecb5ddc78";
            break;
        case "pink":
            title = "ピンク";
            description = "ピンク、説明";
            image = "https://firebasestorage.googleapis.com/v0/b/test-blaze-2e7f0.appspot.com/o/ff60fc.png?alt=media&token=629aca80-d44a-4ee2-9ee9-dd94b42f665c";
            break;
        case "yellow":
            title = "黄色";
            description = "黄色、説明";
            image = "https://firebasestorage.googleapis.com/v0/b/test-blaze-2e7f0.appspot.com/o/ffe156.png?alt=media&token=55e28a07-2b57-47ca-9579-09147e8ddf66";
            break;
        default:
            title = "homeです";
            description = "ホームの説明欄です";
            image = "";
            break;
    }

    console.log('title is', title);

    try {
        console.log('🐯 成功');
        res.set("Cache-Control", "public, max-age=600, s-maxage=600");
        const html = createHtml(path, title, description, image);
        res.status(200).send(html);
    } catch (error) {
        console.log('🐯 エラー');
        res.status(404).send("404 Not Found");
    }
});

// cloud function のトリガーはblueをGETリクエストした時ですが、
// この関数は新しいHTMLを出力するのでおなじpathにすると無限ループしてしまう。
// なのでpathの最後に_をつけてつけて無限ループを防いでいる。
const createHtml = (path: string, title: string, description: string, image: string) => {
    return `<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://test-blaze-2e7f0.firebaseapp.com/"/>
    <meta property="og:title" content="${title}">
    <meta property="og:description" content="${description}">
    <meta property="og:image" content="${image}"/>
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Twitterの表示 ${title}">
    <meta name="twitter:description" content="Twitterの表示 ${description}">
    <meta name="twitter:image" content="${image}"/>
  </head>
  <body>
    <script type="text/javascript">window.location="/${path}_";</script>
  </body>
</html>
`;
};
