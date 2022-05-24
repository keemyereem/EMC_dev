<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="kr.co.idasystem.framework.cmm.util.WebResult"%>
<%@ page import="kr.co.idasystem.framework.cmm.util.PropertieUtils"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="code" uri="/WEB-INF/tlds/codeUtils.tld"%>
	
        
        <div class="sub_visual sustain_visual">
                <div class="sub_visual_nav">
                    <h2>지속가능경영</h2>
                    <div class="sub_visual_nav_prev">
                        <a href="javascript:link(2,0);" title="이전메뉴로 이동">
                            <span>사업소개</span>
                            <img src="/resources/service/env/images/common/sub_visual_nav_prev.png" alt="sub_visual_nav_prev">
                        </a>
                    </div>
                    <div class="sub_visual_nav_next">
                        <a href="javascript:link(4,0);" title="다음메뉴로 이동">
                            <img src="/resources/service/env/images/common/sub_visual_nav_next.png" alt="sub_visual_nav_next">
                            <span>투자정보</span>
                        </a>
                    </div>
                </div> 
                <div class="sub_visual_m">
                    <h2>지속가능경영</h2>
                    <div class="location">
                        <a href="javascript:;" class="loccation_tit" title="하위메뉴열기">안전보건</a>
                        <div class="drop_box">
                            <ul>
                                <li><a href="javascript:;" title="페이지 이동">윤리경영</a></li>
                                <li class="active"><a href="javascript:;" title="페이지 이동">안전보건</a></li>
                                <li><a href="javascript:;" title="페이지 이동">공정거래 자율준수 프로그램</a></li>
                                <li><a href="javascript:;" title="페이지 이동">탄소저감</a></li>
                                <li><a href="javascript:;" title="페이지 이동">사회공헌</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="sub_visual_menu">
                    <div class="home"></div>
                    
                </div>
            </div>


            <div class="contents cont_sustain">
                <div class="contents_inner">
                    <div class="icon" data-aos="fade-up">
                        <img src="/resources/service/env/images/sustain/sustain_tit_icon.png" alt="타이틀 아이콘">
                    </div>
                    <h3 class="title" data-aos="fade-up" data-aos-offset="200">탄소 저감</h3>

                    <div class="sub_contents carbon_contents">
                        <div class="inner">
                            <section class="section1" data-aos="fade-up" data-aos-delay="500">
                                <div class="left"></div>
                                <!-- <ul class="left">
                                    <li>
                                        <div class="txt">
                                            <div class="tit">소화가스발전</div>
                                            <div class="sub">양산사업소 외 6개현장</div>
                                        </div>
                                        <div class="icon">
                                            <img src="images/sustain/carbon_icon01.png" alt="소화가스발전 아이콘">
                                            <img src="images/sustain/carbon_icon01_m.png" alt="소화가스발전 아이콘">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="txt">
                                            <div class="tit">스팀생산</div>
                                            <div class="sub">여수2사업소 외 6개현장</div>
                                        </div>
                                        <div class="icon">
                                            <img src="images/sustain/carbon_icon02.png" alt="스팀생산 아이콘">
                                            <img src="images/sustain/carbon_icon02_m.png" alt="스팀생산 아이콘">
                                        </div>
                                    </li>
                                </ul> -->
                                <div class="center_img">
                                    <img src="/resources/service/env/images/sustain/carbon_center_img.png" alt="">
                                </div>
                                <div class="right"></div>
                                <!-- <ul class="right">
                                    <li>
                                        <div class="icon">
                                            <img src="images/sustain/carbon_icon03.png" alt="태양광발전 아이콘">
                                            <img src="images/sustain/carbon_icon03_m.png" alt="태양광발전 아이콘">
                                        </div>
                                        <div class="txt">
                                            <div class="tit">태양광발전</div>
                                            <div class="sub">경주사업소 외 89개현장</div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <img src="images/sustain/carbon_icon04.png" alt="소화조 재생가스 아이콘">
                                            <img src="images/sustain/carbon_icon04_m.png" alt="소화조 재생가스 아이콘">
                                        </div>
                                        <div class="txt">
                                            <div class="tit">소화조 재생가스</div>
                                            <div class="sub">안산사업소 외 4개현장</div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="icon">
                                            <img src="images/sustain/carbon_icon05.png" alt="기타 발전 아이콘">
                                            <img src="images/sustain/carbon_icon05_m.png" alt="기타 발전 아이콘">
                                        </div>
                                        <div class="txt">
                                            <div class="tit">기타 발전</div>
                                            <div class="sub">파주사업소 외 3개현장</div>
                                        </div>
                                    </li>
                                </ul> -->
                            </section>
                            <section class="section2" data-aos="fade-up">
                                <table summary="탄소저감" cellpadding="0" cellspacing="0">
                                    <caption>탄소저감</caption>
                                    <colgroup>
                                        <col style="width:14%;"> 
                                        <col style="width:21.5%;">
                                        <col style="width:21.5%;">
                                        <col style="width:21.5%;">
                                        <col style="width:21.5%;">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th rowspan="2">구분</th>
                                            <th colspan="2">에너지 생산량</th>
                                            <th colspan="2">소나무</th>
                                        </tr>
                                        <tr>
                                            <th>${retMap.enLastyearSj}</th>
                                            <th>${retMap.enQuaterSj}</th>
                                            <th>${retMap.pineLastyearSj}</th>
                                            <th>${retMap.pineQuaterSj} </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>태양광발전</td>
                                            <td>${retMap.enLastyearSolar}MW</td>
                                            <td>${retMap.enQuaterSolar}MW</td>
                                            <td>${retMap.pineLastyearSolar}</td>
                                            <td>${retMap.pineQuaterSolar}</td>
                                        </tr>
                                        <tr>
                                            <td>소화가스발전</td>
                                            <td>${retMap.enLastyearDigstntak}MW</td>
                                            <td>${retMap.enQuaterDigstntak}MW</td>
                                            <td>${retMap.pineLastyearDigstntak}</td>
                                            <td>${retMap.pineQuaterDigstntak}</td>
                                        </tr>
                                        <tr>
                                            <td>소화조 재생가스</td>
                                            <td>${retMap.enLastyearDigstngas}㎥</td>
                                            <td>${retMap.enQuaterDigstngas}㎥</td>
                                            <td>${retMap.pineLastyearDigstngas}</td>
                                            <td>${retMap.pineQuaterDigstngas}</td>
                                        </tr>
                                        <tr>
                                            <td>스팀생산</td>
                                            <td>${retMap.enLastyearSteam}㎥</td>
                                            <td>${retMap.enQuaterSteam}㎥</td>
                                            <td>${retMap.pineLastyearSteam}</td>
                                            <td>${retMap.pineQuaterSteam}</td>
                                        </tr>
                                        <tr>
                                            <td>기타 발전</td>
                                            <td>${retMap.enLastyearEtc}MW</td>
                                            <td>${retMap.enQuaterEtc}MW</td>
                                            <td>${retMap.enQuaterEtc}</td>
                                            <td>${retMap.pineQuaterEtc}</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <p>
                                    EMC 운영 사업소 62개소의 에너지생산량 기준으로 CO2 감축량 계산 <br>
                                    30년생 소나무 1그루의 1년간 CO2 감축량 6.6kg 기준 환산(한국기후 환경네트워크 탄소발자국 계산기)
                                </p>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
            
            <script>currentPageNum(3,3);</script>
            