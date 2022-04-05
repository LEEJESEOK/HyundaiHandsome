
function setColOrder(orderByCol, obj) {
	$('#orderByCol').val(orderByCol);
	if($(obj).hasClass('toggle')) {
		$(obj).removeClass('toggle');
		$('#orderByType').val('DESC');
	} else {
		$(obj).addClass('toggle');
		$('#orderByType').val('ASC');
	}
	goToList();
}

function showCurrColOrderType() {
	var orderByCol = $('#orderByCol').val();
	var orderByType = $('#orderByType').val();
	if(orderByCol && orderByType) {
		$('.sort-btn').each(function(index, item){
			if($(this).hasClass(orderByCol)) {
				$(this).addClass('on');
				if(orderByType == 'ASC') {
					$(this).addClass('toggle');
				}
			}
		});
	}
}

function downloadFile(fileIdEnc) {
	document.fileForm.fileIdEnc.value = fileIdEnc;
	document.fileForm.submit();
}

var pattNotNum = /[^0-9]*$/g;
var pattNum = /[0-9]/g;
var pattEn = /[a-z|A-Z]/g;
var pattKo = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g;
var pattSc = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"_]/gi;
var pattScp = /[\)<>%&\(\'\"\s]/gi;
var pattEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

function allowOnlyNum(obj) {
	var str = obj.value;
	obj.value = str.replace(pattNotNum, '');
}

function disallowKo(obj) {
	var str = obj.value;
	obj.value = str.replace(pattKo, '');
}

function disallowKoScp(obj) {
	var str = obj.value;
	obj.value = str.replace(pattKo, '').replace(pattScp, '');
}

function disallowNumSc(obj) {
	var str = obj.value;
	obj.value = str.replace(pattNum, '').replace(pattSc, '');
}

function checkPattKo(str) {
	if (pattKo.test(str) == true) {
		return true;
	} else {
		return false;
	}
}

function checkPattScp(str) {
	if (pattScp.test(str) == true) {
		return true;
	} else {
		return false;
	}
}

function checkPattEmail(str) {
	if(pattEmail.test(str) == true) {
		return true;
	} else {
		return false;
	}
}

function checkPwdComb(str) {
	var patt1 = /[a-z|A-Z]/;
	var patt2 = /[0-9]/;
	var patt3 = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"_]/;
	if(patt1.test(str) && patt2.test(str) && patt3.test(str)) {
		return true;
	} else {
		return false;
	}
}

function checkPwdUsable(adminType, adminId, pwd) {
	var usable = 'N';
	$.ajax({
		type: 'post',
		url: '/'+adminType+'/admin/pwdOldMatchCheckAjax.do',
		dataType: 'json',
		data: {
			'adminId':adminId,
			'pwd':pwd
		},
		async: false,
		success: function(res) {
			if(res.pwdOldMatchYn == 'N') {
				usable = 'Y';
			}
		}
	});
	if(usable == 'Y') {
		return true;
	} else {
		return false;
	}
}
