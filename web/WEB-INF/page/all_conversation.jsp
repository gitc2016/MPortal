<%--
  Created by IntelliJ IDEA.
  User: levon
  Date: 12/14/16
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">-->
<!--<div class="container">-->
<!--<div class="navbar-header">-->
<!--<a class="navbar-brand" href="/my/dashboard">-->
<!--MicroMentor&nbsp;-->
<!--</a>-->

<!--<button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">-->
<!--<span class="icon-bar"></span>-->
<!--<span class="icon-bar"></span>-->
<!--<span class="icon-bar"></span>-->
<!--</button>-->
<!--<button type="button" class="navbar-toggle visible-xs" data-toggle="offcanvas" id="dashboard-nav-toggle">-->
<!--<span class="glyphicon glyphicon-user"></span>-->
<!--</button>-->
<!--</div>-->
<!--<div class="navbar-collapse collapse">-->
<!--<ul class="nav navbar-nav ">-->
<!--<li class="visible-xs visible-sm">-->
<!--<a href="/my/dashboard">-->
<!--<img class="profile-pic pull-left" src="/img/profile/21/210/2106/210624-profile-50.jpg?r=769"-->
<!--alt="Levon Aloyan"/>-->
<!--Levon </a>-->
<!--</li>-->
<!--<li><a href="/people/search/entrepreneurs">Entrepreneurs</a></li>-->
<!--<li><a href="/people/search/mentors">Mentors</a></li>-->
<!--<li><a href="/questions">Ask & answer questions</a></li>-->
<!--</ul>-->

<!--<ul class="nav navbar-nav navbar-right">-->
<!--<li class="dropdown hidden-xs hidden-sm">-->
<!--<a href="/my/dashboard" class="dropdown-toggle">-->
<!--<img class="profile-pic pull-left" src="/img/profile/21/210/2106/210624-profile-50.jpg?r=655"-->
<!--alt="Levon Aloyan"/>-->
<!--Levon <b class="caret"></b>-->
<!--</a>-->
<!--<ul class="dropdown-menu">-->
<!--<li><a href="/my/profile">Profile & Settings</a></li>-->
<!--<li><a href="/logout">Logout</a></li>-->
<!--</ul>-->
<!--</li>-->
<!--<li class="visible-xs visible-sm"><a href="/my/profile">Profile & Settings</a></li>-->
<!--<li class="visible-xs visible-sm"><a href="/logout">Logout</a></li>-->
<!--<li id="mail"><a href="/my/connections" class="count"><span class="glyphicon glyphicon-envelope"></span><span-->
<!--id="inbox-count" class="count"></span></a></li>-->
<!--<li><a href="//www.micromentor.org/blog/"><span class="glyphicon glyphicon-question-sign"></span>-->
<!--Blog</a></li>-->
<!--</ul>-->
<!--</div>&lt;!&ndash;/.navbar-collapse &ndash;&gt;-->
<!--</div>-->
<!--</nav>-->
<!--<div class="modal fade" id="modal-all-notifications" style="overflow-y:scroll;" tabindex="-1" role="dialog"-->
<!--aria-labelledby="modal-all-notfications-label" aria-hidden="true">-->
<!--<div class="modal-dialog">-->
<!--<div class="modal-content">-->
<!--<div class="modal-header">-->
<!--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
<!--<h4 class="modal-title" id="modal-all-notifications-label">My Notifications</h4>-->

<!--</div>-->
<!--<div class="modal-body" id="modal-all-notifications-body">-->

<!--</div>-->
<!--<div class="modal-footer">-->
<!--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->

<%--<script type="text/javascript">--%>
    <%--jQuery(document).ready(function () {--%>
        <%--jQuery('.stop-conversation').css({'background-color': 'grey', 'border-color': '#545454'});--%>
    <%--});--%>
<%--</script>--%>


<div class="container">


    <div class="row row-offcanvas row-offcanvas-left">
        <div id="scon" class="col-sm-2 col-md-3 sidebar-offcanvas" role="navigation">
            <div class="sidebar-nav">


                <ul class="nav">
                    <li class="home"><a href="/my/dashboard"><span class="badge"><span
                            class="glyphicon glyphicon-home"></span></span> <span class="nav-label">My Dashboard</span></a>
                    </li>
                    <li><a href="profile.action"><span class="badge"><span class="glyphicon glyphicon-cog"></span></span>
                        <span class="nav-label">Profile &amp; Settings</span></a></li>
                    <li><a href="/my/connections"><span class="badge"><span class="glyphicon glyphicon-retweet"></span></span>
                        <span class="nav-label">Conversations</span></a></li>
                    <li><a href="/my/groups"><span class="badge"><span class="glyphicon glyphicon-user"></span></span>
                        <span class="nav-label">My Groups</span></a></li>
                    <li><a href="/questions/user/210624"><span class="badge"><span
                            class="glyphicon glyphicon-question-sign"></span></span> <span class="nav-label">My Q &amp; A</span></a>
                    </li>
                </ul>

            </div>
        </div>
        <div id="pcon" class="col-sm-offset-4 col-md-9 col-md-offset-3">

            <h1>Conversations</h1>


            <div class="mm-wgt panel panel-default pos-relative">

                <div class="panel-body media ">
                    <div class="pull-left">
                        <a href="/members/user-profile/210533/type:mentor/type:default"
                           title="View Ruben Sharyan's Profile">
                            <img class="profile-pic img-circle" src="/images/MPLogo120.png"
                                 alt="Ruben Sharyan"/>
                        </a></div>
                    <div class="media-body">

                        <div class="row">
                            <div class="col-sm-3">
                                <strong><a href="/members/user-profile/210533/type:mentor">Ruben
                                    Sharyan</a></strong><br/>

                                12/14/2016<br/>
                                mentor<br/>
                            </div>
                            <div class="col-sm-9">
                                <a href="/conversations/ask-for-help/210533"
                                   class="btn btn-primary pull-right hidden-xs">View</a>
                                <div class="col-sm-8">
                                    <div>
                                        <p>fghjkl;</p></div>
                                </div>
                            </div>
                            <div class="col-xs-12 visible-xs">
                                <a href="/conversations/ask-for-help/210533" class="btn btn-primary">View</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <p><a href="/users/contactprefs/210624">Change your availability</a></p>
        </div>
    </div>
</div> <!-- /container -->



<%--<script type="text/javascript">--%>
    <%--jQuery(document).ready(function () {--%>
        <%--jQuery('.tellUsHereLink').click(function () {--%>
            <%--jQuery('#tellUsHere').load(jQuery(this).attr('href'), null, function () {--%>
                <%--jQuery('#tellUsHere').modal('show');--%>
            <%--});--%>
            <%--return false;--%>
        <%--});--%>
    <%--});--%>
<%--</script>--%>
<%--<script>--%>

    <%--var MM_CURRENT_USER_ID = 210624;--%>
<%--</script>--%>
<%--<script type="text/javascript" src="/js/common-bottom.js"></script>--%>
<%--<script>--%>
    <%--(function (i, s, o, g, r, a, m) {--%>
        <%--i['GoogleAnalyticsObject'] = r;--%>
        <%--i[r] = i[r] || function () {--%>
                    <%--(i[r].q = i[r].q || []).push(arguments)--%>
                <%--}, i[r].l = 1 * new Date();--%>
        <%--a = s.createElement(o),--%>
                <%--m = s.getElementsByTagName(o)[0];--%>
        <%--a.async = 1;--%>
        <%--a.src = g;--%>
        <%--m.parentNode.insertBefore(a, m)--%>
    <%--})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');--%>

    <%--ga('create', 'UA-1213359-1', 'micromentor.org');--%>
    <%--window.optimizely = window.optimizely || [];--%>
    <%--window.optimizely.push("activateUniversalAnalytics")--%>
    <%--ga('send', 'pageview');--%>

<%--</script>--%>

<%--<!-- begin olark code -->--%>
<%--<script data-cfasync="false" type='text/javascript'>/*<![CDATA[*/--%>
<%--window.olark || (function (c) {--%>
    <%--var f = window, d = document, l = f.location.protocol == "https:" ? "https:" : "http:", z = c.name, r = "load";--%>
    <%--var nt = function () {--%>
        <%--f[z] = function () {--%>
            <%--(a.s = a.s || []).push(arguments)--%>
        <%--};--%>
        <%--var a = f[z]._ = {}, q = c.methods.length;--%>
        <%--while (q--) {--%>
            <%--(function (n) {--%>
                <%--f[z][n] = function () {--%>
                    <%--f[z]("call", n, arguments)--%>
                <%--}--%>
            <%--})(c.methods[q])--%>
        <%--}--%>
        <%--a.l = c.loader;--%>
        <%--a.i = nt;--%>
        <%--a.p = {--%>
            <%--0: +new Date--%>
        <%--};--%>
        <%--a.P = function (u) {--%>
            <%--a.p[u] = new Date - a.p[0]--%>
        <%--};--%>
        <%--function s() {--%>
            <%--a.P(r);--%>
            <%--f[z](r)--%>
        <%--}--%>

        <%--f.addEventListener ? f.addEventListener(r, s, false) : f.attachEvent("on" + r, s);--%>
        <%--var ld = function () {--%>
            <%--function p(hd) {--%>
                <%--hd = "head";--%>
                <%--return ["<", hd, "></", hd, "><", i, ' onl' + 'oad="var d=', g, ";d.getElementsByTagName('head')[0].", j, "(d.", h, "('script')).", k, "='", l, "//", a.l, "'", '"', "></", i, ">"].join("")--%>
            <%--}--%>

            <%--var i = "body", m = d[i];--%>
            <%--if (!m) {--%>
                <%--return setTimeout(ld, 100)--%>
            <%--}--%>
            <%--a.P(1);--%>
            <%--var j = "appendChild", h = "createElement", k = "src", n = d[h]("div"), v = n[j](d[h](z)), b = d[h]("iframe"), g = "document", e = "domain", o;--%>
            <%--n.style.display = "none";--%>
            <%--m.insertBefore(n, m.firstChild).id = z;--%>
            <%--b.frameBorder = "0";--%>
            <%--b.id = z + "-loader";--%>
            <%--if (/MSIE[ ]+6/.test(navigator.userAgent)) {--%>
                <%--b.src = "javascript:false"--%>
            <%--}--%>
            <%--b.allowTransparency = "true";--%>
            <%--v[j](b);--%>
            <%--try {--%>
                <%--b.contentWindow[g].open()--%>
            <%--} catch (w) {--%>
                <%--c[e] = d[e];--%>
                <%--o = "javascript:var d=" + g + ".open();d.domain='" + d.domain + "';";--%>
                <%--b[k] = o + "void(0);"--%>
            <%--}--%>
            <%--try {--%>
                <%--var t = b.contentWindow[g];--%>
                <%--t.write(p());--%>
                <%--t.close()--%>
            <%--} catch (x) {--%>
                <%--b[k] = o + 'd.write("' + p().replace(/"/g, String.fromCharCode(92) + '"') + '");d.close();'--%>
            <%--}--%>
            <%--a.P(2)--%>
        <%--};--%>
        <%--ld()--%>
    <%--};--%>
    <%--nt()--%>
<%--})({--%>
    <%--loader: "static.olark.com/jsclient/loader0.js",--%>
    <%--name: "olark",--%>
    <%--methods: ["configure", "extend", "declare", "identify"]--%>
<%--});--%>
<%--/* custom configuration goes here (www.olark.com/documentation) */--%>
<%--olark.identify('4101-727-10-9314');--%>
<%--olark.configure("locale.welcome_title", "Chat with us now!");--%>
<%--olark.configure('locale.chatting_title', "Now Chatting");--%>
<%--olark.configure('locale.unavailable_title', "Customer Support");--%>
<%--olark.configure('locale.away_message', '<strong>Need help?</strong> First, visit our help center <a href="https://www.micromentor.org/blog/entrepreneurs/?utm_source=olark-chat&utm_medium=help-link&utm_campaign=support">for entrepreneurs</a> or <a href="https://www.micromentor.org/blog/mentors/?utm_source=olark-chat&utm_medium=help-link&utm_campaign=support">for mentors</a>. If you still need help, send us a message, and we will respond as soon as possible.');--%>
<%--olark.configure('locale.loading_title', "Loading support...");--%>
<%--olark.configure('locale.welcome_message', "Hello. What can we help you with today?");--%>
<%--olark.configure('locale.chat_input_text', "Type your question here and hit <enter> to chat");--%>
<%--olark.configure('locale.name_input_text', "Type your Name");--%>
<%--olark.configure('locale.email_input_text', "...and type your Email");--%>
<%--olark.configure('locale.offline_note_message', "How can we help you?");--%>
<%--olark.configure('locale.send_button_text', "Send");--%>
<%--olark.configure('locale.offline_note_thankyou_text', "Thank you for your message.  We will help you as soon as we can.");--%>
<%--olark.configure('locale.offline_note_error_text', "You must complete all fields and specify a valid email address");--%>
<%--olark.configure('locale.offline_note_sending_text', "Sending...");--%>
<%--olark.configure('locale.operator_is_typing_text', "is typing...");--%>
<%--olark.configure('locale.operator_has_stopped_typing_text', "has stopped typing");--%>
<%--olark.configure('locale.introduction_error_text', "Please leave a name and email address so we can contact you in case we get disconnected");--%>
<%--olark.configure('locale.introduction_messages', "Having trouble finding the right mentoring connection? Let us help you.");--%>
<%--olark.configure('locale.introduction_submit_button_text', "Get Started");--%>
<%--olark.configure('locale.disabled_input_text_when_convo_has_ended', "chat ended, refresh for new chat");--%>
<%--olark.configure('locale.disabled_panel_text_when_convo_has_ended', "This conversation has ended, but all you need to do is refresh the page to start a new one!");--%>
<%--olark.configure('locale.ended_chat_message', "This conversation has ended.");--%>
<%--olark.configure('locale.cobrowsing_notify_visitor_end_text', "Cobrowsing has ended.");--%>
<%--olark.configure('locale.cobrowsing_confirm_control_text', "Would you like the operator to take control of your browser?");--%>
<%--olark.configure('locale.cobrowsing_notify_visitor_control_text', "The operator is now controlling your browser.");--%>
<%--olark.configure('locale.cobrowsing_visitor_confirm_allow_message', "Do you want to allow the operator to view your browser window?");--%>
<%--olark.configure('locale.cobrowsing_visitor_confirm_allow_button_start', "Start sharing.");--%>
<%--olark.configure('locale.cobrowsing_visitor_confirm_allow_button_decline', "Decline.");--%>
<%--olark.configure('locale.cobrowsing_visitor_allow_approve_message', "You're now sharing your browser.");--%>
<%--olark.configure('locale.cobrowsing_visitor_allow_approve_button_stop', "End sharing.");--%>
<%--olark.configure('locale.cobrowsing_notify_visitor_decline_text', "Cobrowsing declined.");--%>

<%--/*]]>*/</script>--%>
<%--<noscript><a href="https://www.olark.com/site/4101-727-10-9314/contact" title="Contact us" target="_blank">Questions?--%>
    <%--Feedback?</a> powered by <a href="http://www.olark.com?welcome" title="Olark live chat software">Olark live chat--%>
    <%--software</a></noscript>--%>
<!-- end olark code -->


