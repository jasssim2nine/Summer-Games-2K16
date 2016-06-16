/*custom javascript*/
/*  
    Author Name : Jasim Khan, Ebin Antoo
    Student # : 200263011, 200269378
    Date : 08-JUn-16
    Version : 1.1
    Description : cutom javascript for user controlled scripts and functions.
*/

/*smooth scroll*/
$(function () {
    $('a[href*="#"]:not([href="#"])').click(function () {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
            if (target.length) {
                $('html, body').animate({
                    scrollTop: target.offset().top
                }, 1000);
                return false;
            }
        }
    });
});

$(".nav a").on("click", function () {
    $(".nav").find(".active").removeClass("active");
    $(this).parent().addClass("active");
});

/*stick top*/
$(document).scroll(function (e) {
    var scrollTop = $(document).scrollTop();
    if (scrollTop > 0) {
        console.log(scrollTop);
        $('.navbar').removeClass('navbar-static-top').addClass('navbar-fixed-top');
    } else {
        $('.navbar').removeClass('navbar-fixed-top').addClass('navbar-static-top');
    }
});

Skip to content
This repository
Search
Pull requests
Issues
Gist
 @jasssim2nine
Unwatch 1
Star 0
Fork 0 jasssim2nine/COMP2007-S2016-Lab3-Departments-Page
Code  Issues 0  Pull requests 0  Wiki  Pulse  Graphs  Settings
Branch: master Find file Copy pathCOMP2007-S2016-Lab3-Departments-Page/COMP2007-S2016-Lab3-Departments-Page/Content/app.css
5617cdd  4 days ago
Jasssim Add project files.
0 contributors
RawBlameHistory     92 lines (86 sloc)  2.13 KB
/* Sticky footer styles
-------------------------------------------------- */
html {
position: relative;
min-height: 100%;
}
body {
    /* Margin bottom by footer height */
    margin-bottom: 80px;
}
.footer {
    position: absolute;
    bottom: 0;
    width: 100%;
    /* Set the fixed height of the footer here */
    height: 60px;
}


/* Custom page CSS
-------------------------------------------------- */
/* Not required for template or sticky footer method. */

.container .text-muted {
    margin: 20px 0;
}

/* Pagination Style
-------------------------------------------------- */
​
.pagination-ys {
    /*display: inline-block;*/
    padding-left: 0;
    margin: 20px 0;
    border-radius: 4px;
}
​
.pagination-ys table > tbody > tr > td {
    display: inline;
}
​
.pagination-ys table > tbody > tr > td > a ,
.pagination-ys table > tbody > tr > td > span {
    position: relative;
    float: left;
    padding: 8px 12px;
    line-height: 1.42857143;
    text-decoration: none;
    color: #dd4814;
    background-color: #f5f2f2;
    border: 1px solid #dddddd;
    margin-left: -1px;
}

.pagination-ys table > tbody > tr > td > a ,​
.pagination-ys table > tbody > tr > td > span {
    position: relative;
    float: left;
    padding: 8px 12px;
    line-height: 1.42857143;
    text-decoration: none;    
    margin-left: -1px;
    z-index: 2;
    color: #aea79f;
    background-color: #ffffff;
    border: 1px solid #dddddd;
    cursor: pointer;
}
​
.pagination-ys table > tbody > tr > td:first-child > a,
.pagination-ys table > tbody > tr > td:first-child > span {
    margin-left: 0;
    border-bottom-left-radius: 4px;
    border-top-left-radius: 4px;
}
​
.pagination-ys table > tbody > tr > td:last-child > a,
.pagination-ys table > tbody > tr > td:last-child > span {
    border-bottom-right-radius: 4px;
    border-top-right-radius: 4px;
}
​
.pagination-ys table > tbody > tr > td > a:hover,
.pagination-ys table > tbody > tr > td > span:hover,
.pagination-ys table > tbody > tr > td > a:focus,
.pagination-ys table > tbody > tr > td > span:focus {
    color: #97310e;
    background-color: #ffffff;
    border: 1px solid #dddddd;
    cursor: pointer;
}
Status API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Contact Help