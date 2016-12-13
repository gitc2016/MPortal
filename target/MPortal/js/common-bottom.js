var confirm = function(message, callback, el) {
	jQuery('#confirmContent').html(message);
	jQuery('#confirmDialog')
		.modal('show')
		.find('a.confirmOk')
            .unbind('click')
            .click(function() {
                var btn = jQuery(this);
                btn.button('loading');
                callback.apply(el);
                btn.button('reset');
                return false;
            });
};

var generateDialogHtml = function(link, mode) {
	var path = link.attr('href');
	var helpKey = mode == 'file' ? path.replace(new RegExp('/', "g"), "_") : path.substring(1);

	// disable href behavior
	link.on('click', function(e) {
		e.preventDefault();
	});

	jQuery.ajax({
		url: mode == 'file' ? path : "/help/get/" + helpKey,
		success: function(html) {
			// parse html into title and content
			var parts = jQuery.parseHTML(html),
				title = 'Help',
				content = '';

			if (parts[0].tagName.toUpperCase() == 'H3') {
				// title should now mirror question
				title = jQuery.parseHTML(link.parent().html())[0].textContent.replace(/\($/, '');
				content = parts[1];
			} else if (parts[0].tagName.toUpperCase() == 'H2') {
				title = jQuery(parts[0]).text();
				content = parts[1];
			} else {
				content = html;
			}

			link.popover({
				placement: 'auto top',
				html: true,
				title: '<button type="button" class="close close-popover">&times;</button>' + title,
				content: content
			});
		}
	});
};

var generateDialogHtmlFromVars = function(path, isLarge, isFirst, mode) {
	var helpKey = mode == 'file' ? path.replace(new RegExp('/', "g"), "_") : path.substring(1);
	var id = isLarge ? 'lgHelpDialog' : 'helpDialog';
	if (isFirst) {
		jQuery('#' + id)
			.clone()
			.attr('id', id + '-' + helpKey)
			.appendTo("body");

		jQuery.ajax({
			url: mode == 'file' ? path : "/help/get/" + helpKey,
			success: function(html) {
				jQuery('#' + id + '-' + helpKey + ' .helpContent').html(html);
			}
		});
	}
};

function initPopover() {
    var link = jQuery(this);

    link.popover({
        placement: 'auto top',
        html: true,
        title: '<button type="button" class="close close-popover">&times;</button>' + link.attr('data-title')
    });
}


jQuery(document).ready(function() {
	// [BOOTSTRAP] YOU ARE HERE
	var url = window.location;
	jQuery('ul.nav a', '#scon').filter(function() {
		return this.href == url;
    }).parent().addClass('active');			

	// [BOOTSTRAP] SLIDE MENUS
	if (jQuery('.search-advanced').length) {
		var $divAdv = jQuery('.search-advanced');
		var $inputAdv = $divAdv.find('input[name*=Keyword]');
		var $inputBasic = jQuery('.page-header').find('.search-basic');

		jQuery('#search-advanced-close, [data-toggle=search-advanced]').click(function() {
			$divAdv.toggleClass('active');
			return false;
		});

		$divAdv.on('keydown', 'input', function(e) {
			if (e.keyCode === 13) {
				jQuery(this).closest('form').submit();
			}
		});

		$inputBasic.val($inputAdv.val()).closest('div').removeClass('hidden');

		jQuery('.page-header').on('keydown', '.search-basic', function(e) {
			if (e.keyCode === 13) {
				$inputAdv.val($inputBasic.val())
					.closest('form').submit();
				return false;
			}
		});
	}

	jQuery('#dashboard-nav-toggle').click(function() {
		jQuery('.row-offcanvas-left').toggleClass('active');
		return false;
	});


	// [BOOTSTRAP] user dropdown menu
	jQuery('.dropdown', '.navbar').hover(
		function() {
			jQuery(this).closest('li').addClass('active');
		}, function() {
		jQuery(this).closest('li').removeClass('active');
	}
	);

	// [BOOTSTRAP] pagination hacks
	jQuery('.current', '.pagination').addClass('active').wrapInner('<span></span>');


	// HELP DIALOG
	// generate all help dialogs
	jQuery('a.help').each(function() {
		generateDialogHtml(jQuery(this));
	});
	// new version
	jQuery('a[data-toggle=popover]').each(initPopover);

	// 
	// 
	// POPUP DIALOG
	// generate all popup dialogs
	jQuery('a.popup').each(function() {
		generateDialogHtml(jQuery(this), 'file');
	});

	// NARRATIVES
	jQuery('.narrative').popover({
		placement: 'auto top',
		html: true
	});

	// POPUP - close button
	jQuery(document).on('click', function(e) {
		if (jQuery(e.target).hasClass('close-popover')) {
			jQuery(e.target).closest('.popover').prev('a').popover('toggle');
		}
	});
	
	jQuery('.networkGroupOption img, .networkGroupOption p').click(function() {
		var e = jQuery('input', jQuery(this).closest('.networkGroupOption'));
		if (e.attr('checked')) {
			e.removeAttr('checked');
		} else {
			e.attr('checked', 'checked');
		}
		e.change();

		return false;
	});
	jQuery('.networkGroupOption input').change(function() {
		// this is called after the values have changed
		// clear all, then re-check
		if (jQuery(this).attr('checked')) {
			jQuery('.networkGroupOption input').removeAttr('checked');
			jQuery(this).attr('checked', 'checked');
		} else {
			jQuery('.networkGroupOption input').removeAttr('checked');
		}

		jQuery(this).closest('form').submit();
		return false;
	});

    updateNumMessagesHeader();
    
    fillAllNotificationsModal(MM_CURRENT_USER_ID);
    
});
