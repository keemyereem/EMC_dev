<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="code" uri="/WEB-INF/tlds/codeUtils.tld"%>
<%@ taglib prefix="file" uri="/WEB-INF/tlds/fileLib.tld"%>

<form name="mainForm" id="mainForm" method="post">
    <input type="hidden" name="<c:out value='${_csrf.parameterName}' />" value="<c:out value='${_csrf.token}' />" />
    <input type="hidden" id="bbsNo" name="bbsNo" value="<c:out value='${webResult.params.bbsNo}' />" />
    <input type="hidden" id="nttNo" name="nttNo" />

    <input type="hidden" id="MENUNO" name="MENUNO" value="<c:out value='${webResult.params.MENUNO}' />" />
    <input type="hidden" id="MENUID" name="MENUID" value="<c:out value='${webResult.params.MENUID}' />" />

            <div class="sub_visual sustain_visual">
                <div class="sub_visual_nav">
                    <h2>Sustainable Management</h2>
                    <div class="sub_visual_nav_prev">
                        <a href="javascript:link(2,0);" title="이전메뉴로 이동">
                            <span>Business</span>
                            <img src="/resources/service/env/images/common/sub_visual_nav_prev.png" alt="sub_visual_nav_prev">
                        </a>
                    </div>
                    <div class="sub_visual_nav_next">
                        <a href="javascript:linkBBS(4,0, 'BM0000000002');" title="다음메뉴로 이동">
                            <img src="/resources/service/env/images/common/sub_visual_nav_next.png" alt="sub_visual_nav_next">
                            <span>IR</span>
                        </a>
                    </div>
                </div>

                <!--
                <div class="sub_visual_m">
                    <h2>지속가능경영</h2>
                    <div class="location">
                        <a href="javascript:;" class="loccation_tit" title="하위메뉴열기">사회공헌</a>
                        <div class="drop_box">
                            <ul>
                                <li><a href="javascript:;" title="페이지 이동">윤리경영</a></li>
                                <li><a href="javascript:;" title="페이지 이동">안전보건</a></li>
                                <li><a href="javascript:;" title="페이지 이동">공정거래 자율준수 프로그램</a></li>
                                <li><a href="javascript:;" title="페이지 이동">탄소저감</a></li>
                                <li class="active"><a href="javascript:;" title="페이지 이동">사회공헌</a></li>
                            </ul>
                        </div>
                    </div>
                </div> -->

                <div class="sub_visual_menu">
                    <div class="home"></div>

                </div>
            </div>

            <jsp:include page="/WEB-INF/view/cms/cmm/include/listSrarch.jsp" />

            <div class="contents cont_sustain cont_sustain_en">
                <div class="contents_inner">
                    <div class="icon" data-aos="fade-up">
                        <img src="/resources/service/env/images/sustain/sustain_tit_icon.png" alt="타이틀 아이콘">
                    </div>

                    <h3 class="title" data-aos="fade-up" data-aos-offset="200"><c:out value='${bbsMstDtl.bbsNm}' /></h3>

                    <div class="sub_contents SC_sub_con">
                        <div class="inner">

                        <section class="section1" data-aos="fade-up" data-aos-offset="500">
                            <div class="sc_desc">
                                <p>
                                    <img src="/resources/service/env/images/sustain/SC_story_tit.png" alt="SC_story_tit">
                                    <img src="/resources/service/env/images/sustain/SC_story_tit_m.png" alt="SC_story_tit">
                                </p>
                                <h3 class="title">The beginning of our story</h3>
                                <p>
                                    We have initiated various CSR activities such as the “Blanket Wash” and “Attaching Insulation Cap” (ppyokppyoki in Korean) activities, 
                                    based on the theme of “cleanness” and “warmth”, in order to establish lasting bonds with socially disadvantaged classes such as 
                                    elderly people living alone and children that are forced to become heads of their households at a young age.
                                    We are writing this “‘Our story - Happy emc”’ every day, with the hope of spreading happiness and warmth all over the country.
                                    Our employees take pride in contributing to the nation and society as members of a company that protects the environment, 
                                    and are actively participating in various CSR activities.
                                </p>
                            </div>
                            <div class="sc_obj">
                                <p><span>Mission</span> ‘Good company’ growing together with our community through sharing </p>
                                <div>
                                    <div>
                                        <p>Declaration of Good company</p>
                                        <p>Employees of Environment Management Corporation</p>
                                    </div>
                                    <ul class="sc_obj_box">
                                        <li>
                                            <div class="sc_obj_box_inner">
                                                <div>01<span>One</span></div>
                                                <div>
                                                    We do real and practical sharing activities which contain sincerity by employee’s voluntary participation.
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="sc_obj_box_inner">
                                                <div>02<span>Two</span></div>
                                                <div>
                                                    We focus on the local community where our business is located.
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="sc_obj_box_inner">
                                                <div>03<span>Three</span></div>
                                                <div>
                                                    We contribute to the economic revitalization of local community by hiring local candidates.
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="sc_obj_box_inner">
                                                <div>04<span>Four</span></div>
                                                <div>
                                                    We comply with the laws and customs of the country and local community.
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </section>

                        <section class="section2" data-aos="fade-up" data-aos-offset="500">
                            <div class="sc_desc">
                                <p>
                                    <img src="/resources/service/env/images/sustain/SC_major_tit.png" alt="SC_major_tit">
                                    <img src="/resources/service/env/images/sustain/SC_major_tit_m.png" alt="SC_major_tit">
                                </p>
                                <h3 class="title">Our story - Happy emc</h3>
                            </div>
                            <div class="sc_obj">
                                <ul>
                                    <li>
                                        <p><img src="/resources/service/env/images/sustain/SC_act1.png" alt="SC_act1"></p>
                                        <p>
                                            <span>“Helping Neighbors in Need” Blanket Wash Activity</span>
                                            We visit socially disadvantaged single-senior and 
                                            child-head households in the spring and summer and 
                                            wash their bulky blankets.
                                        </p>
                                    </li>
                                    <li>
                                        <p><img src="/resources/service/env/images/sustain/SC_act2.png" alt="SC_act2"></p>
                                        <p>
                                            <span>“Warmth” Air Ccap to keep People Warm</span>
                                            We share warmth in the winter season by 
                                            installing insulation air caps at 
                                            single-senior households.
                                        </p>
                                    </li>
                                    <li>
                                        <p><img src="/resources/service/env/images/sustain/SC_act3.png" alt="SC_act3"></p>
                                        <p>
                                            <span>“Water” River Cleaning Activity</span>
                                            We regularly clean rivers and streams near sewage treatment plants and 
                                            transform them into eco parks and community shelters.
                                        </p>
                                    </li>
                                    <li>
                                        <p><img src="/resources/service/env/images/sustain/SC_act4.png" alt="SC_act4"></p>
                                        <p>
                                            <span>“Food” Providing Meals</span>
                                            We regularly visit community welfare centers and 
                                            provide meals to the needy.
                                        </p>
                                    </li>
                                    <li>
                                        <!-- 
                                        <p><img src="/resources/service/env/images/sustain/SC_act5.png" alt="SC_act5"></p>
                                        <p>
                                            <span>‘소소대심(小小大心)’ 캠페인</span>
                                            매달 임직원들의 자발적인 급여끝전모으기를 통해 적은 금액이지만 큰 마음을 전달하는 ‘소소대심 캠페인’을 진행합니다.<br>
                                            임직원이 기부한 금액만큼 회사에서 후원하는 매칭 그랜트를 통해 연말 취약계층의 마음에 따뜻함을 전합니다.
                                        </p> 
                                        -->
                                    </li>

                                </ul>
                            </div>
                        </section>

                            <section class="section3">
                                <div class="sc_desc" data-aos="fade-up" data-aos-offset="300">
                                    <p>
                                        <img src="/resources/service/env/images/sustain/SC_news_tit.png" alt="SC_news_tit">
                                        <img src="/resources/service/env/images/sustain/SC_news_tit_m.png" alt="SC_news_tit">
                                    </p>
                                    <h3 class="title">Sharing Footprints</h3>
                                </div>
			                    <div class="irsearch_contents">
			                        <div class="inner">

		                            <div class="search">
		                                <div class="input_row input_search">
		                                    <input type="text" id="searchText" name="searchText" placeholder="Search" value="<c:out value='${webResult.params.searchText}' />" />
		                                    <a href="javascript:fn_search();"><img src="/resources/service/env/images/common/icon_inp_search.png" alt="Search"></a>
		                                </div>
		                            </div>

				                            <div class="news_list">
				                                <ul id="ul-list">
				                                    <%@ include file="/WEB-INF/view/cms/bbs/data/import/bbsDataListAjax.jsp" %>
				                                </ul>
				                                <div id="btn-more" class="btn_more">
				                                    <a href="javascript:onViewMore();">
				                                        <div class="icon"><i></i><i></i></div>
				                                        <span id="moreListSpan"></span>
				                                    </a>
				                               </div>
				                            </div>

			                        </div>
			                    </div>
			                </section>

			            </div>
			        </div>

                </div>
            </div>
    <input type="text" style="display:none;"/>
</form>

<script>

    currentPageNum(3,4);

    $("#searchText").on("keyup",function(key){
        if(key.keyCode==13) {
            fn_search();
        }
    });

    function fn_search() {

        $("#pageSize").val(6);
        $("#currentPageNo").val(1);

        onMakeNewMoreList();

    }

    function onMakeNewMoreList() {

        $("#ul-list").html("");

        ajax.moreList("<c:url value="/bbs/data/import/bbsDataListAjax.do" />", "ul-list", fn_viewMoreResult);
    }

   function onViewMore() {

	   let pageSize = $("#pageSize").val();
	   let currentPageNo = parseInt($("#currentPageNo").val());

	   currentPageNo = currentPageNo + 1;

	   $("#currentPageNo").val(currentPageNo) ;

       onMakeMoreList();
   }

   function onMakeMoreList() {
       ajax.moreList("<c:url value="/bbs/data/import/bbsDataListAjax.do" />", "ul-list", fn_viewMoreResult);
   }

   function fn_viewMoreResult() {

       let totalCnt = $('#valTotalRecordCount').val();
       let showCnt = $('#ul-list > li').size();

       $("#moreListSpan").html("more list (" + showCnt + " / " + totalCnt + ")");

       if (showCnt >= totalCnt || totalCnt  == 0 || totalCnt == "0") {
           $("#btn-more").css("display", "none");
       } else {
           $("#btn-more").css("display", "block");
       }

   }

   function onView(nttNo) {
       $("#nttNo").val(nttNo) ;
       util.fnPostSend('<c:url value="/en/bbs/data/bbsDataView.do" />') ;
   }

   $(document).ready(function () {
       fn_viewMoreResult();

       const prevViewNttNo = "<c:out value='${webResult.params.nttNo}' />";
       if (prevViewNttNo != "" && $("#bbs-data-" + prevViewNttNo).length == 1) {
    	   var offset = $("#bbs-data-" + prevViewNttNo).offset();
    	   $("html").animate({scrollTop : offset.top - 400}, 400);
       }
   });
</script>