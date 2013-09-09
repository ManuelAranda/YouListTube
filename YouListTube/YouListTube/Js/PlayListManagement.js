$(document).ready(function () {
    $('#play').click(function () {
        var q = $.trim($('#Txt_Input').val());
        $.ajax({
            dataType: "json",
            url: "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=" + 50 + "&q=" + q + "&type=music&key=AIzaSyDR49L-biOblkCkiVuNHdA-i2ALGaRnmGc"
        }).done(function (data) {
            filter(data)
        });
    });

    function filter(data) {
        var ytplayer_playlist = [];
        var arr = data["items"];
        $.each(arr, function (i, s) {
            //console.log(s);
            $.each(s["id"], function (key, val) {
                //console.log(key + " > " + val);
                if (key == 'videoId') {
                    ytplayer_playlist.push(val);
                }
            });
        });
        //loadPlaylist(ytplayer_playlist);
        var id_v = "";
        $.each(ytplayer_playlist, function (i, s) {
            id_v += s + "%2C";
        });
        //console.log(id_v.slice(0, -3));
        $.ajax({
            dataType: "json",
            url: "https://www.googleapis.com/youtube/v3/videos?part=contentDetails%2Csnippet&id=" + id_v.slice(0, -3) + "&key=AIzaSyDR49L-biOblkCkiVuNHdA-i2ALGaRnmGc"
        }).done(function (source) {
            setPlayList(source);
        });
    }

    function setPlayList(source) {
        var playlist = [];
        var arr = source["items"];
        $.each(arr, function (i, s) {
            //console.log(s);
            $.each(s["contentDetails"], function (key, val) {
                //console.log(key + " > " + val);
                if (key == 'duration') {
                    // 15 minutos de duracion maximo
                    var rex = /^PT([1-9]||[0-1][0-5])(M([1-9]||[1-5][0-9]||60)S)$/;
                    if (rex.test(val)) {
                        playlist.push(s["id"]);
                    }
                }
            });
        });
        console.log(playlist);
        loadPlaylist(playlist);
    }
});