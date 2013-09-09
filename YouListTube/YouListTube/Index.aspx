<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="YouListTube.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Css/Index.css" rel="stylesheet" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="Js/PlayListManagement.js"></script>
    <title>"You&ltList&gtTube"</title>
</head>
<body>
    <div id="content">
        <h1>You&ltList&gtTube</h1>
        <form id="form1" runat="server">
            <div>
                <input id="Txt_Input" type="text" /><br />
                <input id="play" type="button" value="Play" />
            </div>
        </form>
         <div id="player">
         </div>
        <div>
            <textarea id="txtA_ListVideo" cols="5" rows="30"></textarea>
        </div>
        <script>
            // 2. This code loads the IFrame Player API code asynchronously.
            var tag = document.createElement('script');

            tag.src = "https://www.youtube.com/iframe_api";
            var firstScriptTag = document.getElementsByTagName('script')[0];
            firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

            // 3. This function creates an <iframe> (and YouTube player)
            //    after the API code downloads.
            var player;
            function onYouTubeIframeAPIReady() {
                player = new YT.Player('player', {
                    height: '390',
                    width: '640',
                    videoId: '',
                    events: {
                        'loadPlaylist': loadPlaylist
                    }
                });
            }
            function loadPlaylist(list) {
                player.loadPlaylist(list);
            }
    </script>
    </div>
</body>
</html>
