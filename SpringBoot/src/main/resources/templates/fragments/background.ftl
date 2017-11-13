<script type="text/javascript">
    $(function() {

        $("body").css({padding:0,margin:0});
        var f = function() {
            $(".ndra-container").css({position:"relative"});
            var h1 = $("body").height();
            var h2 = $(window).height();
            var d = h2 - h1;
            var h = $(".ndra-container").height() + d;
            var ruler = $("<div>").appendTo(".ndra-container");
            h = Math.max(ruler.position().top,h);
            ruler.remove();
            $(".ndra-container").height(h);
        };
        setInterval(f,1000);
        $(window).resize(f);
        f();

    });
</script>

<a href="#top"><img src="images\updown3-1.png" id="updown" height=5% width=3%></a>

<a href="#foot"><img src="images\updown3-1.png" id="downup" height=5% width=3%></a>