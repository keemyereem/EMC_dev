<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="kr.co.idasystem.framework.cmm.util.WebResult"%>
<%@ page import="kr.co.idasystem.framework.cmm.util.PropertieUtils"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="code" uri="/WEB-INF/tlds/codeUtils.tld"%>                
                
<form name="mainForm" id="mainForm" method="post" >
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="hidden" id="currentPageNo" name="currentPageNo" value="<c:out value="${param.currentPageNo }" />" >
    <input type="hidden" id="pageSize" name="pageSize" value="<c:out value="${param.pageSize }" />" >    
    <input type="hidden" id="modeType" name="modeType" value="<c:out value="${modeType}" />" >
    <input type="hidden" id="idCheck" name="idCheck" value="" >
    <input type="hidden" id="useAt" name="useAt" value="Y" >
    
                
                <div class="mainTitleWrap">
                    <div class="mainTitle">관리자 관리 등록</div>                   
                </div>
                <p class="subTitle">기본정보</p>
                <p class="txtRight"><span class="required">*</span> 항목은 필수 입력항목입니다.</p>
                <table class="row">
                    <caption></caption>
                    <colgroup>
                        <col style="width: 15%;">
                        <col style="width: 85%;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>관리자 구분 <span class="required">*</span></th>
                            <td>
                                 <code:selectBox id="mngrType" eventName="onchange" eventValue="fnMngrAuthSet();" tagClass="width40" title="관리자 구분 선택" upperCode="C034000" defultCode="C002001" value="" />
                            </td>
                        </tr>
                        <tr>
                            <th>아이디 <span class="required">*</span></th>
                            <td>
                                <div class="inBlock width40 marginR20">
                                    <input type="text" name="mngrId" id="mngrId" placeholder="아이디를 입력하세요." maxlength="30" >
                                </div>
                                <div class="helpTxt" id="chkMsg"></div>
                                <div><div class="helpTxt">영문과 숫자 조합으로 입력하세요. / 길이에 맞게 입력하세요. (6~20 Byte 사이)</div></div>                                   
                                <!-- <div class="inBlock"><a href="#a;" class="btn small do">중복확인</a></div> -->
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호 <span class="required">*</span></th>
                            <td class="pd">
                                <div class="width40">
                                    <input type="password" name="mngrPassword" id="mngrPassword" placeholder="비밀번호를 입력하세요." maxlength="20">
                                </div>                                
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호 확인<span class="required">*</span></th>
                            <td class="pd">
                                <div class="width40">
                                    <input type="password" name="mngrPassword2" id="mngrPassword2" placeholder="비밀번호를 입력하세요." maxlength="20">
                                </div>                                
                            </td>
                        </tr>
                        <tr>
                            <th>이름<span class="required">*</span></th>
                            <td class="pd">
                                <div class="width40">
                                    <input type="text" name="mngrExpsrNm" id="mngrExpsrNm"  maxlength="60" placeholder="이름을 입력하세요." maxlength="30">
                                </div>                                
                            </td>
                        </tr>
                        <tr>
                            <th>이메일 <span class="required">*</span></th>
                            <td class="pd">
                                <code:email id="mngrEmail" name="mngrEmail" tagClass="flex width70" title="담당자 이메일" value=""/>
                            </td>
                        </tr>                                      
                        <tr>
                            <th>연락처 <span class="required">*</span></th>
                            <td class="pd">
                                <code:tel id="telno" tagClass="flex width50" telUpperCode="C030000" defultCode="C002001" title="전화번호선택" value=""/>
                            </td>
                        </tr> 
                        <tr>
                            <th>부서</th>
                            <td class="pd">
                                <div class="width40">
                                    <input type="text" name="deptName" id="deptName" placeholder="부서를 입력하세요.">
                                </div>                                
                            </td>
                        </tr>                       
                    </tbody>
                </table>
                
                
                <p class="subTitle marginT40" id="pAuth">권한정보</p>
                <table class="row" id="tbAuth">
                    <caption></caption>
                    <colgroup>
                        <col style="width: 15%;">
                        <col style="width: 85%;">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>컨텐츠 관리 권한 <span class="required">*</span></th>
                            <td> 
                                <c:forEach var="item" items="${authCdList}" varStatus="i" >
                                <div class="chkWrap">
                                    <input type="checkbox" name="mngrAuthCd" id="chk_${item.code }" value="${item.code }">
                                    <label for="chk_${item.code }">${item.codeNm }</label>
                                </div>
                                </c:forEach>
                                
                            </td>
                        </tr>                        
                    </tbody>
                </table>
                <div class="btnWrap right marginT40">                    
                    <a href="javascript:onSave()" class="btn large do">등록</a>
                    <a href="javascript:onList()" class="btn large undo">목록</a>
                </div>
</form>                 
                <!-- 부서조회 -->               
                <div class="popupWrap" id="findDept">
                    
                </div>
                
                
    <script >
        $(document).ready(function () {
               
        });
        
        // 아이디 중복 체크
        $("#mngrId").keyup(function(){
            var idObj         = document.getElementById("mngrId");       
            var guideObjNmObj = document.getElementById("chkMsg");
            var str = idObj.value;
           
            var pattern1 = /[0-9]/; // 숫자
            var pattern2 = /[a-zA-Z]/; // 문자
            var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
           
            var numtextyn = (pattern1.test(str) || pattern2.test(str));
            
            var chk = true;
            
            if(chk && (!numtextyn || pattern3.test(str) || str.length > 20 || str.length < 6)) {
               guideText = '아이디는 영문과 숫자 조합으로 6자 이상 20자 이하로 입력하세요.';
               chk = false;
            }
            if(chk && !isAlphaNum(idObj) ) {
                guideText = "아이디는 숫자와 영문만 가능합니다.";
                chk = false;
            }
            if( chk == false ){
                $('#chkMsg').html(guideText);
                $("#idCheck").val("N");
            } else {            
                var data = new Object();
                data.mngrId = $('#mngrId').val();
                ajax.jsonToJson("<c:url value="/sys/mngr/idDuplChkAjax.do" />", onIdChkReturn, JSON.stringify(data) ) ;
            
            }
                                  
            
        });
        
        function onIdChkReturn(webReauest){

            if(webReauest != null){
                if($.trim(webReauest)==0){
                    $('#chkMsg').html("사용 가능한 ID입니다.");
                    $("#idCheck").val("Y");
                }else{
                    $('#chkMsg').html("사용할 수 없는 ID입니다.");
                    $("#idCheck").val("N");
                }
                 
            } else {
                util.alert('<spring:message code="cmm.login.fail.system" />');
            }
        }

        
        // 이메일 세팅
        function onChangeEmailDomn(obj){
            $('#email2').val(obj.value);
        }
        // 부서조회 팝업
        function popDeptSearchOpen(){
            var data = new Object();
            data.openId = "findDept";

            ajax.jsonToHtml("<c:url value="/sys/dept/import/popDeptSearchAjax.do" />", JSON.stringify(data), "findDept" );

        }
        // 부서 선택 추가
        function onAddDept(deptCode, deptNm){

            var str = "<li class=\"marginT5\" id=\"" + deptCode + "\">" ;
            str += deptNm ;
            str += "<input type=\"hidden\" name=\"deptCode\" value=\"" + deptCode + "\">" ;
            str += " <div class=\"inBlock\"><a href=\"javascript:onDelDeptCode('" + deptCode + "')\" class=\"btn del undo\">삭제</a></div>";
            str += "</li>" ;
                   
            //$("#ulDept").append(str);
            $("#ulDept").html(str);

            $('body').removeClass('fixed');
            $('#findDept').hide();
        }
        // 부서 삭제
        function onDelDeptCode(deptCode){
            $("#" + deptCode).remove();
        }


        // 등록 처리
        function onSave() {
        	var frm = document.mainForm;
            var msg = "";
            var goUrl = "";

            msg = "등록 하시겠습니까?";
            goUrl = "<c:url value="/sys/mngr/mngrWriteProcessAjax.do" />";
            
         	// 이메일 처리
            util.setEmail("mngrEmail");
            // 전화번호 저리
            util.setPhone("telno");
            // 팩스번호
            //util.setPhone("fxnum");
            // 휴대폰번호
            //util.setPhone("mbtlnum");
                     
            if(!validation.inputObj('mngrType', '관리자 타입을 선택해 주세요.', 7, 7)) return;
            
            if(!validation.inputObj("mngrId", '아이디는 필수 등록 항목입니다.', 5, 20)) return;            
            if( $("#idCheck").val() != "Y" ){
                alert("아이디를 확인해 주세요.");
                return;
            }            
            if(!validation.inputObj("mngrPassword", '비밀번호는 필수 등록 항목입니다.', 4, 9)) return;
            
            if( $("#mngrPassword").val() != "" ){
            	if( $("#mngrPassword").val().length < 8 || $("#mngrPassword").val().length > 20 ){
            		alert("비밀번호는 8자 이상 20자 이하로 입력해 주세요");
            		return;
            	}
            	var passwd1 = frm.mngrPassword;
            	if(trim(passwd1.value) == ""){
            		alert("비밀번호를 입력하세요.");
            		return ;
            	}
            	var passwd2 = frm.mngrPassword2;
            	if(trim(passwd2.value) == ""){
            		alert("비밀번호확인을 입력하세요.");
            		return ;
            	}
            	if(passwd1.value != passwd2.value){
            		alert("비밀번호와 비밀번호확인이 다릅니다.");
            		return ;
            	}
            	if( CheckPassWord(frm.mngrId, frm.mngrPassword, frm.mngrPassword2 ) == false){
                	return;
                }
            }
            
            if(!validation.inputObj("mngrExpsrNm", '이름은 필수 등록 항목입니다.', 2, 15)) return;            
            //if(!validation.radioFromName("mainForm", "indvdlInfoTrtmntAt", "개인정보취급여부는 필수 항목입니다.") ) return;
            if(!validation.validateEmail("mngrEmail")) return;            
            if(!validation.isPhone("telno",   true, "전화번호 형식이 아닙니다.")) return;
            //if(!validation.isPhone("fxnum",   false, "전화번호 형식이 아닙니다.")) return;
            //if(!validation.isPhone("mbtlnum", false, "휴대폰 형식이 아닙니다.")) return;            
            //if(!validation.radioFromName("mainForm", "useAt", "사용여부는 필수 항목입니다.") ) return;
            /* if(!validation.inputObj('deptName', '부서는 필수 등록 항목입니다.', 2, 60)) return; */
            
            

            if( confirm(msg)){
                ajax.json(goUrl);
            }
            return;
        }
 
        function onList(){
            util.fnPostSend('<c:url value="/sys/mngr/mngrList.do" />');
        }
        
        function fnMngrAuthSet(){
        	console.log( $("#mngrType").val() );
        	if( $("#mngrType").val() == "C034001" ) {
        		$("#pAuth").hide();
        		$("#tbAuth").hide();
        	} else {
        		$("#pAuth").show();
        		$("#tbAuth").show();
        	}
        }

    </script>
                