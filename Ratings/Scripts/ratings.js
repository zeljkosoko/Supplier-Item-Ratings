(function ($) {
    var stars = {
        itemrate: {}
    };

    var imgSrcStarEmpty = Microsoft.Dynamics.NAV.GetImageResource("Ratings/Images/star-empty.png");
    var imgSrcStar = Microsoft.Dynamics.NAV.GetImageResource("Ratings/Images/star.png");

    function resetStars(tag) {
        for (var i = 1; i <= 5; i++) {
            stars[tag][i].src = imgSrcStarEmpty;
        };
    };

    function highlightStars(tag, m) {
        resetStars(tag);
        for (var i = 1; i <= m; i++) {
            stars[tag][i].src = imgSrcStar;
        };
    };

    function click(tag, rating) {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("SaveRatings", [tag, rating]);
    };

    window.initUi = function () {
        function bindEvents(tag, i) {
            stars[tag][i].src = imgSrcStarEmpty;
            stars[tag][i].addEventListener("mouseenter", function () {
                highlightStars(tag, i);
            });
            stars[tag][i].addEventListener("mouseleave", function () {
                resetStars(tag);
                highlightStars(tag, stars[tag].rating);
            });
            stars[tag][i].addEventListener("click", function () {
                click(tag, i);
                stars[tag].rating = i;
            });
        };

        for (var i = 1; i <= 5; i++) {
            stars.itemrate[i] = document.getElementById("star" + i);
            bindEvents("itemrate", i);
        };
    };

    window.ShowRatings = function (ratings) {
        highlightStars("itemrate", ratings.starsnumber);
        stars.itemrate.rating = ratings.starsnumber;
    };
})(jQuery);
