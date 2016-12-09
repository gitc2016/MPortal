$(document).ready(function () {

    $("#searchfield").focus(function () {
        if ($(this).val() == "Search contacts...") {
            $(this).val("");
        }
    });
    $("#searchfield").focusout(function () {
        if ($(this).val() == "") {
            $(this).val("Search contacts...");
        }
    });

    $("#sendmessage input").focus(function () {
        if ($(this).val() == "Send message...") {
            $(this).val("");
        }
    });
    $("#sendmessage input").focusout(function () {
        if ($(this).val() == "") {
            $(this).val("Send message...");

        }
    });

    // calendar
    $(function () {
        $("#datepicker").datepicker();
    });


    $(".friend").each(function () {
        $(this).click(function () {
            var childOffset = $(this).offset();
            var parentOffset = $(this).parent().parent().offset();
            var childTop = childOffset.top - parentOffset.top;
            var clone = $(this).find('img').eq(0).clone();
            var top = childTop + 12 + "px";

            $(clone).css({'top': top}).addClass("floatingImg").appendTo("#chatbox");

            setTimeout(function () {
                $("#profile p").addClass("animate");
                $("#profile").addClass("animate");
            }, 100);
            setTimeout(function () {
                $("#chat-messages").addClass("animate");
                $('.cx, .cy').addClass('s1');
                setTimeout(function () {
                    $('.cx, .cy').addClass('s2');
                }, 100);
                setTimeout(function () {
                    $('.cx, .cy').addClass('s3');
                }, 200);
            }, 150);

            $('.floatingImg').animate({
                'width': "68px",
                'left': '108px',
                'top': '20px'
            }, 200);

            var name = $(this).find("p strong").html();
            var email = $(this).find("p span").html();
            $("#profile p").html(name);
            $("#profile span").html(email);

            $(".message").not(".right").find("img").attr("src", $(clone).attr("src"));
            $('#friendslist').fadeOut();
            $('#chatview').fadeIn();


            $('#close').unbind("click").click(function () {
                $("#chat-messages, #profile, #profile p").removeClass("animate");
                $('.cx, .cy').removeClass("s1 s2 s3");
                $('.floatingImg').animate({
                    'width': "40px",
                    'top': top,
                    'left': '12px'
                }, 200, function () {
                    $('.floatingImg').remove()
                });

                setTimeout(function () {
                    $('#chatview').fadeOut();
                    $('#friendslist').fadeIn();
                }, 50);
            });

        });
    });

    $("body").on('click', "#categ", function () {
        $("#categorstyle").slideToggle('slow');

    })
    $("body").on('click', "#advancedSearch", function () {
        $("#advancedSearchDiv").slideToggle('slow');
    });
    $("body").on('click', "#delete", function () {
        $("#dialog-confirm").dialog({
            resizable: false,
            height: "auto",
            width: 400,
            modal: true,
            buttons: {
                Yes: function () {
                    window.location.href= '/deleteAccount.action';
                    $(this).dialog("close");
                },
                No: function () {
                    $(this).dialog("close");
                }
            }
        });
    });

    $('body').on('click','#updateAccount',function(){
        showUpdateArea();

    })

});

function showUpdateArea(){
    $("#dialog-form").dialog({
        height: "auto",
        width: 600,
        modal: true,
        resizable: false,
        draggable: false,
        buttons: {
            Yes: function () {
                $('#updateForm').submit();
                // $(this).dialog("close");
            },
            No: function () {
                $(this).dialog("close");
            }
        }
    });
}