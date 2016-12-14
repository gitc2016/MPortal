<%--
  Created by IntelliJ IDEA.
  User: levon
  Date: 12/14/16
  Time: 7:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<div class="page-header ">
    <div class="container">
        <div class="top-buffer"><a class="header-top-link conversations-link" href="/my/connections"><span
                class="glyphicon glyphicon-circle-arrow-left"></span>View all Conversations</a>
            <h1 class="top-buffer">Your conversation with Levon</h1></div>
    </div>
</div>

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery('.stop-conversation').css({'background-color': 'grey', 'border-color': '#545454'});
    });
</script>


<div class="container">


    <div class="row top-buffer">
        <div class="col-sm-12 col-md-4 bottom-buffer">

            <div id="conversation-other-user" class="panel panel-default pos-relative">
                <div class="panel-footer">

                    <div class="ribbon ribbon-panel">
                        Pre-Startup
                    </div>


                    <div class="panel-footer clearfix media">
                        <div class="pull-left">
                            <a href="/members/user-profile/210624/type:entrepreneur/type:default"
                               title="View Levon Aloyan's Profile">
                                <img class="profile-pic img-circle"
                                     src="/img/profile/21/210/2106/210624-profile-115.jpg" alt="Levon Aloyan"/>
                            </a></div>
                        <div class="media-body">
                            <p class="user-name">
                                <a href="/members/user-profile/210624/type:entrepreneur">Levon Aloyan</a></p>


                            <p class="user-info">
                                <small>
                                    <span class="glyphicon glyphicon-map-marker"></span> Gyumri, Armenia<br/>
                                </small>
                                <small>
                                    <span class="glyphicon glyphicon-tag" title="Industry"></span>
                                    Information Technology Services <br/>
                                </small>
                            </p>
                            <div class="pull-left">
                                <div class="badges">
                                    <table>
                                        <tbody>
                                        <tr>
                                            <td>Recent Activity</td>
                                            <td>
                                                <a href="/learn-more/badges" target="_blank"
                                                   class="badge badge-offers-1" data-toggle="tooltip"
                                                   data-container="body"
                                                   title="Has been active in the last 12 months"></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div><!-- end .media-body -->


                    </div> <!-- end dashboard's .clearfix or footer_class or .affinity-bar -->


                    <p><strong>What I Need Help With</strong></p>

                    <div class="read-truncated">
                        <p>Describe your business﻿<em>
                            What does your business do? Why is it important to you? How have you gotten here today?hat
                            do you need help with?﻿</em>
                            What specific business challenges are you seeking to resolve currently? What...</p> <a
                            href="#" class="read-more">Read More</a></div>
                    <div class="read-full hidden">
                        <p>Describe your business﻿<em>
                            What does your business do? Why is it important to you? How have you gotten here today?hat
                            do you need help with?﻿</em>
                            What specific business challenges are you seeking to resolve currently? What can a mentor do
                            to help you resolve these issues? What have you done already to address these challenges?
                        </p>                            <a href="#" class="read-less">Read Less</a>
                    </div>

                    <div class="expertise-list top-buffer bottom-buffer">
                        <ul class="list-unstyled">
                            <li class="clearfix">
                                <strong>Expertise Requested</strong>
                                <ul id="expertiseList">
                                    <li>Accounting and Finance&nbsp;&raquo; Audits</li>
                                </ul>
                            </li>
                            <hr>
                            <li>
                                <strong>Experience</strong>
                            </li>
                            <li>Business is Pre-Launch</li>
                            <li>
                                Languages Spoken: English
                            </li>
                        </ul>
                    </div>
                    <div class="read-related hidden">
                        <p><strong>About My Business</strong></p>
                        <p></p>

                        <ul class="list-unstyled">
                            <li>
                                <p>
                                <p>Describe your business﻿*
                                    What does your business do? Why is it important to you? How have you gotten here
                                    today?</p></p>
                            </li>

                        </ul>
                        <a href="#" class="read-less">Read Less</a>
                    </div>

                </div>
            </div>
            <div>
            </div>

        </div>
        <div class="col-sm-12 col-md-8">
            <%--iterator start--%>
            <div class="panel panel-default" style="position: relative;">

                <div class="panel-heading no-text-transform" id="112230">
                    On Wednesday, Dec 14th, 2016 at 2:47am, you wrote...
                </div>
                <div class="panel-body">
                    <p>hello</p></div>

            </div>
            <%--iterator end--%>
            <p id="error-message" style="visibility:hidden; color:red;">Please insert text in the text box</p>
            <form id="conversation-form" autocomplete="off" enctype="multipart/form-data" style="margin-top: -20px;"
                  method="post" action="/conversations/send_message">
                <fieldset style="display:none;"><input type="hidden" name="_method" value="PUT"/></fieldset>
                <div class="form-group  public"><label for="ConversationMessage0Message"></label><textarea
                        name="data[ConversationMessage][0][message]" cols="30" rows="6" class="form-control"
                        required="1" placeholder="Write a nice message" id="ConversationMessage0Message"></textarea>
                </div>

                <input type="hidden" name="data[Conversation][id]" value="55414" id="ConversationId"/><input
                    type="hidden" name="data[Conversation][mentor_user_id]" value="210625"
                    id="ConversationMentorUserId"/><input type="hidden" name="data[Conversation][entrepreneur_user_id]"
                                                          value="210624" id="ConversationEntrepreneurUserId"/><input
                    type="hidden" name="data[Conversation][initiator]" value="mentor" id="ConversationInitiator"/><input
                    type="hidden" name="data[Conversation][last_message_date]" value="2016-12-14 02:49:34"
                    id="ConversationLastMessageDate"/>
                <div class="clearfix">
                    <div class="pull-left">
                        <button class="btn btn-primary btn-lg send-message-button">Send Message</button>
                    </div>
                    <button class="block pull-right btn btn-default btn-lg" data-toggle="modal"
                            data-target="#blockDialog">Block future messages
                    </button>
                </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="blockDialog" tabindex="-1" role="dialog" aria-labelledby="block-title"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="block-title" class="modal-title">Block Levon Aloyan</h4>
                </div>
                <div class="modal-body">
                    <form autocomplete="off" buttonId="submitBlock" method="post" action="/conversations/block">
                        <fieldset style="display:none;"><input type="hidden" name="_method" value="POST"/></fieldset>
                        <p><em id="blockMessage">Are you sure you want to block future messages?</em></p>
                        <p>Levon Aloyan will no longer be able to message you.</p>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-link pull-right" data-dismiss="modal">No,
                        cancel &raquo;</button>
                    <a id="submitBlock" class="btn btn-primary pull-left" href=/conversations/block/210624
                       title="Yes, Block">Yes, Block</a>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <div class="modal fade" id="unblockDialog" tabindex="-1" role="dialog" aria-labelledby="unblock-title"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 id="unblock-title" class="modal-title">Unblock Levon Aloyan</h4>
                </div>
                <div class="modal-body">
                    <form autocomplete="off" buttonId="submitUnblock" method="post" action="/conversations/unblock">
                        <fieldset style="display:none;"><input type="hidden" name="_method" value="POST"/></fieldset>
                        <p><em id="blockMessage">Are you sure you want to allow future messages?</em></p>
                        <p>Levon Aloyan will be able to message you.</p>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-link pull-right" data-dismiss="modal">No, cancel &raquo
                    </button>
                    <a id="submitUnblock" class="btn btn-primary pull-left" href=/conversations/unblock/210624
                       title="Yes, Allow">Yes, Allow</a>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>

    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            $('.send-message-button').on("click", function (event) {
                if (!$.trim($("#ConversationMessage0Message").val()).length) {
                    if (event.preventDefault) {
                        event.preventDefault();
                    } else {
                        event.returnValue = false;
                    }
                    $('#ConversationMessage0Message').closest('.form-group').addClass('has-error');
                    $('#error-message').css('visibility', 'visible');
                } else {
                    $('.send-message-button').css({'background-color': 'grey', 'border-color': 'grey'});
                    $('.send-message-button').text('Sending Message');
                    $('.send-message-button').on("click", function () {
                        $('.send-message-button').props('disabled', true);
                        $('form').submit();
                        location.reload(true);
                    });
                }
            });

            if ($(".ribbon-conversation-new").length) {
                $('html, body').animate({
                    scrollTop: $(".ribbon-conversation-new:first").offset().top - $('.navbar-fixed-top').outerHeight() - 12 //a little extra padding
                }, 1000);
            }


            $('.read-more').click(function (e) {
                var $divTruncated = $(this).closest('.read-truncated');
                e.preventDefault();

                $divTruncated
                        .addClass('hidden')
                        .next('.read-full').removeClass('hidden');


                $('.read-related').removeClass('hidden');
                return false;
            });

            $('.read-less').click(function (e) {
                e.preventDefault();

                $('.read-truncated')
                        .removeClass('hidden')
                        .next('.read-full').addClass('hidden');


                $('.read-related').addClass('hidden');
                return false;
            });

        });
    </script>

</div> <!-- /container -->


<script type="text/javascript">
    adroll_adv_id = "MNCV22MCCNGKFFA3CKDKRD";
    adroll_pix_id = "KEFXRING3VD7VFZEW7CNJ5";
    (function () {
        var oldonload = window.onload;
        window.onload = function () {
            __adroll_loaded = true;
            var scr = document.createElement("script");
            var host = (("https:" == document.location.protocol) ? "https://s.adroll.com" : "http://a.adroll.com");
            scr.setAttribute('async', 'true');
            scr.type = "text/javascript";
            scr.src = host + "/j/roundtrip.js";
            ((document.getElementsByTagName('head') || [null])[0] ||
            document.getElementsByTagName('script')[0].parentNode).appendChild(scr);
            if (oldonload) {
                oldonload()
            }
        };
    }());
</script>
<script type='text/javascript'>
    window.__wtw_lucky_site_id = 29913;

    (function () {
        var wa = document.createElement('script');
        wa.type = 'text/javascript';
        wa.async = true;
        wa.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://cdn') + '.luckyorange.com/w.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(wa, s);
    })();
</script>

<div class="modal fade" id="confirmDialog" tabindex="-1" role="dialog" aria-labelledby="confirm-title"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 id="confirm-title" class="modal-title">Warning</h4>
            </div>
            <div id="confirmContent" class="modal-body">
                Loading...<img src="/img/ajax-loader.gif" style="display:inline; margin:0 0 -4px 3px;"/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-link pull-right" data-dismiss="modal">Cancel &raquo;</button>
                <a class="confirmOk btn btn-primary pull-left" data-loading-text="Please wait..." href="#"
                   title="OK">OK</a>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="tellUsHere" tabindex="-1" role="dialog" aria-labelledby="tell-us-title" aria-hidden="true">
</div><!-- /.modal -->

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery('.tellUsHereLink').click(function () {
            jQuery('#tellUsHere').load(jQuery(this).attr('href'), null, function () {
                jQuery('#tellUsHere').modal('show');
            });
            return false;
        });
    });
</script>
<script>

    var MM_CURRENT_USER_ID = 210625;
</script>
<script type="text/javascript" src="/js/common-bottom.js"></script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
        a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-1213359-1', 'micromentor.org');
    window.optimizely = window.optimizely || [];
    window.optimizely.push("activateUniversalAnalytics")
    ga('send', 'pageview');

</script>

<!-- begin olark code -->
<script data-cfasync="false" type='text/javascript'>/*<![CDATA[*/
window.olark || (function (c) {
    var f = window, d = document, l = f.location.protocol == "https:" ? "https:" : "http:", z = c.name, r = "load";
    var nt = function () {
        f[z] = function () {
            (a.s = a.s || []).push(arguments)
        };
        var a = f[z]._ = {}, q = c.methods.length;
        while (q--) {
            (function (n) {
                f[z][n] = function () {
                    f[z]("call", n, arguments)
                }
            })(c.methods[q])
        }
        a.l = c.loader;
        a.i = nt;
        a.p = {
            0: +new Date
        };
        a.P = function (u) {
            a.p[u] = new Date - a.p[0]
        };
        function s() {
            a.P(r);
            f[z](r)
        }

        f.addEventListener ? f.addEventListener(r, s, false) : f.attachEvent("on" + r, s);
        var ld = function () {
            function p(hd) {
                hd = "head";
                return ["<", hd, "></", hd, "><", i, ' onl' + 'oad="var d=', g, ";d.getElementsByTagName('head')[0].", j, "(d.", h, "('script')).", k, "='", l, "//", a.l, "'", '"', "></", i, ">"].join("")
            }

            var i = "body", m = d[i];
            if (!m) {
                return setTimeout(ld, 100)
            }
            a.P(1);
            var j = "appendChild", h = "createElement", k = "src", n = d[h]("div"), v = n[j](d[h](z)), b = d[h]("iframe"), g = "document", e = "domain", o;
            n.style.display = "none";
            m.insertBefore(n, m.firstChild).id = z;
            b.frameBorder = "0";
            b.id = z + "-loader";
            if (/MSIE[ ]+6/.test(navigator.userAgent)) {
                b.src = "javascript:false"
            }
            b.allowTransparency = "true";
            v[j](b);
            try {
                b.contentWindow[g].open()
            } catch (w) {
                c[e] = d[e];
                o = "javascript:var d=" + g + ".open();d.domain='" + d.domain + "';";
                b[k] = o + "void(0);"
            }
            try {
                var t = b.contentWindow[g];
                t.write(p());
                t.close()
            } catch (x) {
                b[k] = o + 'd.write("' + p().replace(/"/g, String.fromCharCode(92) + '"') + '");d.close();'
            }
            a.P(2)
        };
        ld()
    };
    nt()
})({
    loader: "static.olark.com/jsclient/loader0.js",
    name: "olark",
    methods: ["configure", "extend", "declare", "identify"]
});
/* custom configuration goes here (www.olark.com/documentation) */
olark.identify('4101-727-10-9314');
olark.configure("locale.welcome_title", "Chat with us now!");
olark.configure('locale.chatting_title', "Now Chatting");
olark.configure('locale.unavailable_title', "Customer Support");
olark.configure('locale.away_message', '<strong>Need help?</strong> First, visit our help center <a href="https://www.micromentor.org/blog/entrepreneurs/?utm_source=olark-chat&utm_medium=help-link&utm_campaign=support">for entrepreneurs</a> or <a href="https://www.micromentor.org/blog/mentors/?utm_source=olark-chat&utm_medium=help-link&utm_campaign=support">for mentors</a>. If you still need help, send us a message, and we will respond as soon as possible.');
olark.configure('locale.loading_title', "Loading support...");
olark.configure('locale.welcome_message', "Hello. What can we help you with today?");
olark.configure('locale.chat_input_text', "Type your question here and hit <enter> to chat");
olark.configure('locale.name_input_text', "Type your Name");
olark.configure('locale.email_input_text', "...and type your Email");
olark.configure('locale.offline_note_message', "How can we help you?");
olark.configure('locale.send_button_text', "Send");
olark.configure('locale.offline_note_thankyou_text', "Thank you for your message.  We will help you as soon as we can.");
olark.configure('locale.offline_note_error_text', "You must complete all fields and specify a valid email address");
olark.configure('locale.offline_note_sending_text', "Sending...");
olark.configure('locale.operator_is_typing_text', "is typing...");
olark.configure('locale.operator_has_stopped_typing_text', "has stopped typing");
olark.configure('locale.introduction_error_text', "Please leave a name and email address so we can contact you in case we get disconnected");
olark.configure('locale.introduction_messages', "Having trouble finding the right mentoring connection? Let us help you.");
olark.configure('locale.introduction_submit_button_text', "Get Started");
olark.configure('locale.disabled_input_text_when_convo_has_ended', "chat ended, refresh for new chat");
olark.configure('locale.disabled_panel_text_when_convo_has_ended', "This conversation has ended, but all you need to do is refresh the page to start a new one!");
olark.configure('locale.ended_chat_message', "This conversation has ended.");
olark.configure('locale.cobrowsing_notify_visitor_end_text', "Cobrowsing has ended.");
olark.configure('locale.cobrowsing_confirm_control_text', "Would you like the operator to take control of your browser?");
olark.configure('locale.cobrowsing_notify_visitor_control_text', "The operator is now controlling your browser.");
olark.configure('locale.cobrowsing_visitor_confirm_allow_message', "Do you want to allow the operator to view your browser window?");
olark.configure('locale.cobrowsing_visitor_confirm_allow_button_start', "Start sharing.");
olark.configure('locale.cobrowsing_visitor_confirm_allow_button_decline', "Decline.");
olark.configure('locale.cobrowsing_visitor_allow_approve_message', "You're now sharing your browser.");
olark.configure('locale.cobrowsing_visitor_allow_approve_button_stop', "End sharing.");
olark.configure('locale.cobrowsing_notify_visitor_decline_text', "Cobrowsing declined.");

/*]]>*/</script>
<noscript><a href="https://www.olark.com/site/4101-727-10-9314/contact" title="Contact us" target="_blank">Questions?
    Feedback?</a> powered by <a href="http://www.olark.com?welcome" title="Olark live chat software">Olark live chat
    software</a></noscript>
<!-- end olark code -->


