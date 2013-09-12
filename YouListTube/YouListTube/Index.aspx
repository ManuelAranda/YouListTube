<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="YouListTube.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script src="Js/PlayListManagement.js"></script>
    <link href="Css/Index.css" rel="stylesheet" />
    <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" />
    <title>"You&ltList&gtTube"</title>
</head>
<body>
    <div id="content">
        <img width="330px" src="Imagenes/YouListTube_Logo_transparente.png" />
        <form id="form1" runat="server">
            <div>
                <input id="Txt_Input" type="text" /><br />
                <input id="play" type="button" value="Play" />
                <!--<button id="play">Crear</button>-->
            </div>
        </form>
         <div id="player">
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
