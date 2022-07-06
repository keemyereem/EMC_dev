<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="file" uri="/WEB-INF/tlds/fileLib.tld"%>
<script>

    $(document).ready( function() {
        mainEvent.init();
    });

</script>
            <div class="contents cont_main cont_main_en">
                <section class="section0">
                    <div class="vis_scroll"></div>
                    <div id="main_visual" class="main_visual">
                        <div class="txt">
                            We are developing a <br class="br_m">global <br class="br_pc">
                            environmental <br class="br_m">company that <br class="br_pc">
                            provides only the highest quality <br class="br_pc">services.
                        </div>

                        <!-- slide swiper lists -->
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="bg bg01">
                                    <video id="mainvideo01" src="/resources/service/env/videos/077721315_main_xl.mp4" playsinline muted loop autoplay data-keepplaying class="video_bg"></video>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="bg bg02">
                                    <video id="mainvideo02" src="/resources/service/env/videos/160704589_main_xl.mp4" playsinline muted loop autoplay data-keepplaying class="video_bg"></video>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="bg bg03">
                                    <video id="mainvideo03" src="/resources/service/env/videos/140958349_main_xl.mp4" playsinline muted loop autoplay data-keepplaying class="video_bg"></video>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="bg bg04">
                                    <video id="mainvideo03" src="/resources/service/env/videos/098171513_main_xl.mp4" playsinline muted loop autoplay data-keepplaying class="video_bg"></video>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="naviPlay">
                        <span class="naviAuto">
                            <a href="javascript:;" class="autoplay"><img src="/resources/service/env/images/common/icon_pause.png" /></a>
                        </span>
                        <span id="fPrev" class="arrow left swiper-button-prev"><a href="javascript:;"><img src="/resources/service/env/images/common/icon_left.png" alt="이전 슬라이드" /></a></span>
                        <span id="fNext" class="arrow right swiper-button-next"><a href="javascript:;"><img src="/resources/service/env/images/common/icon_right.png" alt="다음 슬라이드" /></a></span>
                        <div class="main_notice">
                            <div class="slide_bar">
                                <div class="swiper-pagination"></div>
                                <span class="playbar playbar1">
                                    <span class="playTime"></span>
                                </span>
                                <span class="playbar playbar2">
                                    <span class="playTime"></span>
                                </span>
                                <span class="playbar playbar3">
                                    <span class="playTime"></span>
                                </span>
                                <span class="playbar playbar4">
                                    <span class="playTime"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                </section>
                <%@ include file="/WEB-INF/view/env_eng/carbonReduc/carbonReducMainAjax.jsp" %>

                <section class="section2">
                    <div class="tit_area">
                        <h2 class="title" data-aos="zoom-out" data-aos-duration="500">Business area</h2>
                        <p class="sub_con" data-aos="fade-up" data-aos-delay="500">
                            With our extensive experience and <br class="br_pc">
                            <b>constantly overcome challenges,</b> we are striving <br class="br_pc">
                            to become the company with the <br>
                            <b>highest level of technology in the environmental field</b>.
                        </p>
                    </div>
                    <div class="line"></div>
                    <ul class="business_list ani-on">
                        <li data-type="parallax" data-speed="20"><a href="<c:url value='/en/env/bsnsintrcn/bsnsintrcnList.do?MENUNO=2&SUB_MENUNO=1&searchBsnsintrcnCode=A012001&searchClCode=A012003&ctgryNo=1' />" title="move to page">
                            <div class="img"><img src="/resources/service/env/images/main/main_bus01.png" alt="O&M 이미지"></div>
                            <div class="txt">
                                <dl>
                                    <dt>O&M</dt>
                                    <dd>
                                        We are the leading operator of environmental infrastructure management in Korea, 
                                        operating more than 1,300 treatment facilities nationwide, 
                                        including sewage & wastewater treatment facilities and 
                                        waste treatment facilities.
                                    </dd>
                                </dl>
                            </div>
                        </a></li>
                        <li data-type="parallax_reverse" data-speed="20"><a href="<c:url value='/en/env/bsnsintrcn/bsnsintrcnList.do?MENUNO=2&SUB_MENUNO=2&searchBsnsintrcnCode=A012002&searchClCode=A012009&ctgryNo=' />" title="move to page">
                            <div class="img"><img src="/resources/service/env/images/main/main_bus02.png" alt="환경건설 이미지"></div>
                            <div class="txt">
                                <dl>
                                    <dt>Construction</dt>
                                    <dd>
                                        We have been actively participating in the new/improvement project of 
                                        environmental facilities throughout its 20 years of experience in design, 
                                        construction, and operations management.
                                    </dd>
                                </dl>
                            </div>
                        </a></li>
                        <li data-type="parallax" data-speed="30"><a href="<c:url value='/en/sub.do?MENUID=02_02_0011&MENUNO=2' />" title="move to page">
                            <div class="img"><img src="/resources/service/env/images/main/main_bus03.png" alt="에너지 이미지"></div>
                            <div class="txt">
                                <dl>
                                    <dt>Energy</dt>
                                    <dd>
                                        We safely incinerate and energize waste by 
                                        utilizing heat sources generated during processing for 
                                        power generation and hot water supply.
                                    </dd>
                                </dl>
                            </div>
                        </a></li>
                        <li data-type="parallax_reverse" data-speed="30"><a href="<c:url value='/en/sub.do?MENUID=02_02_0021&MENUNO=2' />" title="move to page">
                            <div class="img"><img src="/resources/service/env/images/main/main_bus04.png" alt="자연순환 이미지"></div>
                            <div class="txt">
                                <dl>
                                    <dt>Recycling Resources</dt>
                                    <dd>
                                        We are endeavoring to contribute to environmental conservation and 
                                        enhancement of the people’s quality of life by reducing the generation of 
                                        wastes to the maximum extent possible and treating generated wastes in 
                                        an environment-friendly manner.
                                    </dd>
                                </dl>
                            </div>
                        </a></li>
                    </ul>
                </section>

                <section class="section3">
                    <div class="tit_area">
                        <h2 class="title" data-aos="zoom-out" data-aos-duration="500">Sustainable Management</h2>
                        <p class="sub_con" data-aos="fade-up" data-aos-delay="500">
                            We practice <br class="br_m"><b>sustainable green management</b> 
                        </p>
                    </div>
                    <div class="sustain_list">
                        <img src="/resources/service/env/images/main/s3_bg01.png" alt="" class="s3_bg01">
                        <img src="/resources/service/env/images/main/s3_bg02.png" alt="" class="s3_bg02">
                        <img src="/resources/service/env/images/main/s3_bg03.png" alt="" class="s3_bg03">
                        <img src="/resources/service/env/images/main/s3_bg04.png" alt="" class="s3_bg04">
                        <img src="/resources/service/env/images/main/s3_bg05.png" alt="" class="s3_bg05">
                        <div class="swiper-container">
                            <ul class="swiper-wrapper">
                                <li class="swiper-slide">
                                    <div>
                                        <div class="sustain_tit">Ethical Management</div>
                                        <p class="sustain_sub">
                                            With the philosophy of “management that does not take shortcuts” and 
                                            “management that seeks a big profit by looking far ahead,” we are striving to 
                                            become a company that is respected by our stakeholders such as customers, 
                                            employees, business partners, and stockholders by fulfilling our commitment to 
                                            transparent business activities and social responsibility.
                                        </p>
                                        <a href="javascript:link(3,0);" class="view_more">Details</a>
                                    </div>
                                </li>
                                <li class="swiper-slide">
                                    <div>
                                        <div class="sustain_tit">Safety and Health</div>
                                        <p class="sustain_sub">
                                            We have made safety and health our top management priority, 
                                            and intend to create a safe working environment by 
                                            establishing systematic management procedures and thoroughly complying with the 
                                            related regulations, in order to protect the happiness of our members and stakeholders.
                                        </p>
                                        <a href="javascript:link(3,1);" class="view_more">Details</a>
                                    </div>
                                </li>
                                <li class="swiper-slide">
                                    <div>
                                        <div class="sustain_tit">Fair Trade Compliance Program</div>
                                        <p class="sustain_sub">
                                            We have established regulations and rules for the implementation of 
                                            self-compliance programs, and we strive to establish a culture of self-compliance with 
                                            fair trade through the voluntary compliance of our members.
                                        </p>
                                        <a href="javascript:link(3,2);" class="view_more">Details</a>
                                    </div>
                                </li>
                                <li class="swiper-slide">
                                    <div>
                                        <div class="sustain_tit">Carbon Reduction</div>
                                        <p class="sustain_sub">
                                            We calculate the carbon dioxide reduction based on 
                                            the energy production of our operations and our efforts 
                                            to protect the environment will continue into the future.
                                        </p>
                                        <a href="javascript:linkCarbon(3,3);" class="view_more">Details</a>
                                    </div>
                                </li>
                                <li class="swiper-slide">
                                    <div>
                                        <div class="sustain_tit">Social Contribution</div>
                                        <p class="sustain_sub">
                                            Our employees take pride in contributing to the nation and 
                                            society as members of a company that protects the environment, 
                                            and are actively participating in various CSR activities.
                                        </p>
                                        <a href="javascript:linkBBS(3,4, 'BM0000000001');" class="view_more">Details</a>
                                    </div>
                                </li>
                            </ul>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </section>

                <section class="section4">
                    <div class="tit_area">
                        <h2 class="title" data-aos="zoom-out" data-aos-duration="500">emc area</h2>
                        <p class="sub_con" data-aos="fade-up" data-aos-delay="500">
                            We create <b>transparency, <br class="br_m">integrity, and clean growth</b>.
                        </p>
                    </div>
                    <div class="emc_wrap">
                        <div class="news">
                            <div class="top">
                                <h2>NEWS</h2>
                                <a href="<c:url value='/en/bbs/data/bbsDataList.do?MENUID=invest_news&MENUNO=4&bbsNo=BM0000000006' />"><img src="/resources/service/env/images/common/icon_plus.png" alt="더보기"></a>
                            </div>
                            <div class="thumbnail">
                            	<c:choose>
                                    <c:when test="${not empty newsList}">
                                        <file:imageView id="thumbFileId" fileId="${newsList[0].thumbFileId}" title="썸네일 이미지"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="/resources/service/env/images/main/main_news_img.jpg" alt="뉴스 이미지" />
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <ul class="news_list">
                                <c:forEach var="item" items="${newsList}" varStatus="i" >
                                <li>
                                    <a href="<c:url value='/en/bbs/data/bbsDataView.do?MENUID=invest_news&MENUNO=4&bbsNo=${item.bbsNo}&nttNo=${item.nttNo}' />">
                                        <div class="news_list_tit"><c:out value='${item.sj}' /></div>
                                        <div class="news_list_date"><fmt:formatDate type="date" pattern="yyyy.MM.dd" value="${item.registDe}" /></div>
                                        <div class="btn">
                                            <img src="/resources/service/env/images/common/icon_arrow_green.png" alt="더보기" />
                                        </div>
                                    </a>
                                </li>
                            	</c:forEach>

                            </ul>
                        </div>
                        <div class="emc_list">
                            <ul>
                                <li onclick="javascript:link(1,2);">
                                    <div class="emc_list_box">
                                        <div class="emc_tit">Management Vision</div>
                                        <div class="emc_sub">
                                            We are the company specializing in <br>
                                            technology-based environmental solutions.
                                        </div>
                                    </div>
                                </li>
                                <li onclick="javascript:link(4,1);">
                                    <div class="emc_list_box">
                                        <div class="emc_tit">Financial <br>Information</div>
                                        <div class="emc_sub">
                                            You can check out the financial information of <br>
                                            Environment Management Corporation.
                                        </div>
                                    </div>
                                </li>
                                <li onclick="javascript:link(1,1);">
                                    <div class="emc_list_box">
                                        <div class="emc_tit">History</div>
                                        <!-- 
                                        <div class="emc_sub">
                                            We are waiting for challenging, <br>
                                            creative, and proud people to join our team.
                                        </div> 
                                        -->
                                    </div>
                                </li>
                                <li onclick="linkBBS(4,2, 'BM0000000007');">
                                    <div class="emc_list_box">
                                        <div class="emc_tit">Disclosure/<br>Announcement</div>
                                        <div class="emc_sub">
                                            We disclose information <br>
                                            transparently and accurately.
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </section>
            </div>

