<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="kr.co.idasystem.framework.cmm.util.WebResult"%>
<%@ page import="kr.co.idasystem.framework.cmm.util.PropertieUtils"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="code" uri="/WEB-INF/tlds/codeUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
	
        
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
                        <a href="javascript:linkBBS(4,0, 'BM0000000006');" title="다음메뉴로 이동">
                            <img src="/resources/service/env/images/common/sub_visual_nav_next.png" alt="sub_visual_nav_next">
                            <span>IR</span>
                        </a>
                    </div>
                </div> 
                <div class="sub_visual_m">
                    <h2>Sustainable Management</h2>
                    <div class="location">
                        <a href="javascript:;" class="loccation_tit" title="하위메뉴열기">Carbon Reduction</a>
                        <div class="drop_box">
                            <ul>
                                <li><a href="javascript:;" title="페이지 이동">Ethical Management</a></li>
                                <li class="active"><a href="javascript:;" title="페이지 이동">Safety and Health</a></li>
                                <li><a href="javascript:;" title="페이지 이동">Fair Trade Compliance Program</a></li>
                                <li><a href="javascript:;" title="페이지 이동">Carbon Reduction</a></li>
                                <li><a href="javascript:;" title="페이지 이동">Social Conrtribution</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="sub_visual_menu">
                    <div class="home"></div>
                    
                </div>
            </div>


            <div class="contents cont_sustain cont_sustain_en">
                <div class="contents_inner">
                    <div class="icon" data-aos="fade-up">
                        <img src="/resources/service/env/images/sustain/sustain_tit_icon.png" alt="타이틀 아이콘">
                    </div>
                    <h3 class="title" data-aos="fade-up" data-aos-offset="200">Carbon Reduction</h3>

                    <div class="sub_contents carbon_contents">
                        <div class="inner">
                            <section class="section1" data-aos="fade-up" data-aos-delay="500">

                                <div class="left"></div>

                                <div class="center_img">
                                    <img src="/resources/service/env/images/sustain/carbon_center_img.png" alt="">
                                </div>
                                
                                <div class="right"></div>

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
                                            <th rowspan="2">Energy Type</th>
                                            <th colspan="2">Energy Production</th>
                                            <th colspan="2">Pine tree</th>
                                        </tr>
                                        <tr>
                                            <th><c:out value='${retMap.enLastyearSj}'/></th>
                                            <th><c:out value='${retMap.enQuaterSj}'/></th>
                                            <th><c:out value='${retMap.pineLastyearSj}'/></th>
                                            <th><c:out value='${retMap.pineQuaterSj}'/> </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Solar</td>
                                            <td><fmt:formatNumber value="${retMap.enLastyearSolar }" pattern="#,###" />MW</td>
                                            <td><fmt:formatNumber value="${retMap.enQuaterSolar }" pattern="#,###" />MW</td>
                                            <td><fmt:formatNumber value="${retMap.pineLastyearSolar }" pattern="#,###" /></td>
                                            <td><fmt:formatNumber value="${retMap.pineQuaterSolar }" pattern="#,###" /></td>
                                        </tr>
                                        <tr>
                                            <td>Digester Gas Power</td>
                                            <td><fmt:formatNumber value="${retMap.enLastyearDigstntak }" pattern="#,###" />MW</td>
                                            <td><fmt:formatNumber value="${retMap.enQuaterDigstntak }" pattern="#,###" />MW</td>
                                            <td><fmt:formatNumber value="${retMap.pineLastyearDigstntak }" pattern="#,###" /> </td>
                                            <td><fmt:formatNumber value="${retMap.pineQuaterDigstntak }" pattern="#,###" /> </td>
                                        </tr>
                                        <tr>
                                            <td>Digester Gas</td>
                                            <td><fmt:formatNumber value="${retMap.enLastyearDigstngas }" pattern="#,###" />㎥</td>
                                            <td><fmt:formatNumber value="${retMap.enQuaterDigstngas }" pattern="#,###" />㎥</td>
                                            <td><fmt:formatNumber value="${retMap.pineLastyearDigstngas }" pattern="#,###" /></td>
                                            <td><fmt:formatNumber value="${retMap.pineQuaterDigstngas }" pattern="#,###" /></td>
                                        </tr>
                                        <tr>
                                            <td>Steam</td>
                                            <td><fmt:formatNumber value="${retMap.enLastyearSteam }" pattern="#,###" />㎥</td>
                                            <td><fmt:formatNumber value="${retMap.enQuaterSteam }" pattern="#,###" />㎥</td>
                                            <td><fmt:formatNumber value="${retMap.pineLastyearSteam }" pattern="#,###" /></td>
                                            <td><fmt:formatNumber value="${retMap.pineQuaterSteam }" pattern="#,###" /></td>
                                        </tr>
                                        <tr>
                                            <td>Other Energy</td>
                                            <td><fmt:formatNumber value="${retMap.enLastyearEtc }" pattern="#,###" />MW</td>
                                            <td><fmt:formatNumber value="${retMap.enQuaterEtc }" pattern="#,###" />MW</td>
                                            <td><fmt:formatNumber value="${retMap.pineLastyearEtc }" pattern="#,###" /></td>
                                            <td><fmt:formatNumber value="${retMap.pineQuaterEtc }" pattern="#,###" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <p>
                                    Carbon dioxide reduction based on energy production at 62 locations of emc operated facilities.<br>
                                    Converted based on yearly GHG reduction(6.6kg CO₂/year) of a 30-year-old pine tree (Korea Climate and Environment Network - Carbon Footprint Calculator)
                                </p>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
            
            <script>currentPageNum(3,3);</script>
            