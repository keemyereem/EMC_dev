<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<input type="hidden" id="totalTreeRate" value="<c:out value="${retMap.totalGoalRate}" />" />
<input type="hidden" id="totalTreeRate_isComplete" value="false" />

<input type="hidden" id="totalTreeSum" value="<c:out value="${retMap.totalResultSum}" />" />
<input type="hidden" id="totalTreeSum_isComplete" value="false" />

<input type="hidden" id="graphGoal" value="<c:out value="${retMap.graphGoal}" />" />

<input type="hidden" id="solarDvlp" value="<c:out value="${retMap.solarDvlp}" />" />
<input type="hidden" id="digstngasDvlp" value="<c:out value="${retMap.digstngasDvlp}" />" />
<input type="hidden" id="digstntakRevivgas" value="<c:out value="${retMap.digstntakRevivgas}" />" />
<input type="hidden" id="steamDvlp" value="<c:out value="${retMap.steamDvlp}" />" />
<input type="hidden" id="etcDvlp" value="<c:out value="${retMap.etcDvlp}" />" />

<!-- 나무 -->
<input type="hidden" id="treeLeft1" />
<input type="hidden" id="treeRight1" />
<input type="hidden" id="treeLeft2" />
<input type="hidden" id="treeRight2" />
<input type="hidden" id="treeLeft3"  />
<!-- // 나무 // -->

    <c:set var="now" value="<%=new java.util.Date()%>" />

                <section class="section1 on">
                    <div class="tit_area">
                        <h2 class="title" data-aos="zoom-out" data-aos-duration="500">Carbon Reduction area</h2>
                        <p class="sub_con" data-aos="fade-up" data-aos-delay="500">We, a global environmental company, <br class="br_pc">are leading the way with its <br class="br_pc"><span>carbon footprint reduction campaign.</span></p>
                    </div>

                    <div class="count2">
                        <div class="level">
                            <div class="carbon_number">
                                <div class="carbon_number_inner">
                                    <p class="tit_pc"><c:out value="${retMap.sj}" escapeXml="false"/></p>
                                    <p class="tit_mob"><c:out value="${retMap.sj}" escapeXml="false"/></p>
                                    <p>
                                        <span class="mov_num1">
                                            <%-- <c:out value="${retMap.totalGoalRate}" /> --%>
                                        </span> %
                                    </p>
                                    <p><span class="carbon_date">As of <br><fmt:formatDate value="${now}" pattern="yyyy.MM.dd hh:mm" /></span></p>
                                </div>
                            </div>
                            <div class="carbon_chart"></div>
                        </div>
                        <div class="text-circle">
                            <img src="/resources/service/env/images/main/text_circle_w.png" alt="">
                            <img src="/resources/service/env/images/main/text_circle_g.png" alt="">
                        </div>
                        <!-- <svg class="text-circle" viewBox="0 0 100 100">
                            <defs>
                                <path id="path" d="M 50, 50 m -37, 0 a 37,37 0 1,1 74,0 a 37,37 0 1,1 -74,0"/>
                            </defs>
                            <text>
                            <textPath xlink:href="#path">Green EMC · Green EMC · Green EMC · Green EMC ·</textPath>
                            </text>
                        </svg> -->
                    </div>

                    <div class="count">
                        <p><span>Energy Production of emc and <br class="br_m">the Amount of CO₂ Reduction</span></p>
                        <div class="count_trigger">
                            <div>
                                <p><img src="/resources/service/env/images/main/bg_clip01.png" alt="bg_clip01"></p>
                                <p>Total amount <br>of reduction</p>
                            </div>
                            <div>
                                <p><span class="mov_num2"></span>per pine tree</p>
                            </div>
                        </div>
                    </div>

                    <div class="count3">
                        <div class="tree">
                            <a href="/en/env/carbonReduc/carbonReducDtl.do?MENUID=3&SUB_MENUNO=3"><img src="/resources/service/env/images/main/sec1_tree1_on.png" data-animated="/resources/service/env/images/main/sec1_tree1.gif" data-static="/resources/service/env/images/main/sec1_tree1_on.png" alt="tree"></a>
                            <ul class="tree_counts">
                                <li>
                                    <div class="tc_img" data-aos="fade-up" data-aos-delay="0"><img src="/resources/service/env/images/main/tree_count01.png" alt="tree_count01"></div>
                                    <h1 data-aos="fade-up" data-aos-delay="300">Photovoltaic <br>Power Generation</h1>
                                    <p class="count" data-aos="fade-up" data-aos-delay="500" data-aos-duration="800">
                                        <span class="tc" data-count="<c:out value="${retMap.solarDvlpResult}" />"></span>per pine tree
                                    </p>
                                    <div class="line">
                                        <svg>
                                            <polyline class="rect" points="227,30 196, 0, 0, 0" fill="none" stroke="#000" stroke-width="1"></polyline>
                                        </svg>
                                        <img src="/resources/service/env/images/main/sec1_dot.png" alt="dot">
                                    </div>

                                </li>
                                <li>
                                    <div class="tc_img" data-aos="fade-up" data-aos-delay="0"><img src="/resources/service/env/images/main/tree_count02.png" alt="tree_count02"></div>
                                    <h1 data-aos="fade-up" data-aos-delay="300">Digestive Gas <br class="br_pc">Generation</h1>
                                    <p class="count" data-aos="fade-up" data-aos-delay="500" data-aos-duration="800">
                                        <span class="tc" data-count="<c:out value="${retMap.digstngasDvlpResult}" />"></span>per pine tree
                                    </p>
                                    <div class="line">
                                        <svg>
                                            <polyline class="rect" points="0,30 30,0 227,0" fill="none" stroke="#000" stroke-width="1"></polyline>
                                        </svg>
                                        <img src="/resources/service/env/images/main/sec1_dot.png" alt="dot">
                                    </div>
                                </li>
                                <li>
                                    <div class="tc_img" data-aos="fade-up" data-aos-delay="0"><img src="/resources/service/env/images/main/tree_count03.png" alt="tree_count03"></div>
                                    <h1 data-aos="fade-up" data-aos-delay="300">Digester <br class="br_pc">Renewable Gas</h1>
                                    <p class="count" data-aos="fade-up" data-aos-delay="500" data-aos-duration="800">
                                        <span class="tc" data-count="<c:out value="${retMap.digstntakDvlpResult}" />"></span>per pine tree
                                    </p>
                                    <div class="line">
                                        <svg>
                                            <polyline class="rect" points="227,30 196,0 0,0" fill="none" stroke="#000" stroke-width="1"></polyline>
                                        </svg>
                                        <img src="/resources/service/env/images/main/sec1_dot.png" alt="dot">
                                    </div>
                                </li>
                                <li>
                                    <div class="tc_img" data-aos="fade-up" data-aos-delay="0"><img src="/resources/service/env/images/main/tree_count04.png" alt="tree_count04"></div>
                                    <h1 data-aos="fade-up" data-aos-delay="300">Steam <br class="br_pc">Production</h1>
                                    <p class="count" data-aos="fade-up" data-aos-delay="500" data-aos-duration="800">
                                        <span class="tc" data-count="<c:out value="${retMap.steamDvlpResult}" />"></span>per pine tree
                                    </p>
                                    <div class="line">
                                        <svg>
                                            <polyline class="rect" points="0,30 30,0 227,0" fill="none" stroke="#000" stroke-width="1"></polyline>
                                        </svg>
                                        <img src="/resources/service/env/images/main/sec1_dot.png" alt="dot">
                                    </div>
                                </li>
                                <li>
                                    <div class="tc_img" data-aos="fade-up" data-aos-delay="0"><img src="/resources/service/env/images/main/tree_count05.png" alt="tree_count05"></div>
                                    <h1 data-aos="fade-up" data-aos-delay="300">Others</h1>
                                    <p class="count" data-aos="fade-up" data-aos-delay="500" data-aos-duration="800">
                                        <span class="tc" data-count="<c:out value="${retMap.etcDvlpResult}" />"></span>per pine tree
                                    </p>
                                    <div class="line">
                                        <svg>
                                            <polyline class="rect" points="227,30 196,0 0,0" fill="none" stroke="#000" stroke-width="1"></polyline>
                                        </svg>
                                        <img src="/resources/service/env/images/main/sec1_dot.png" alt="dot">
                                    </div>
                                </li>
                                <li>
                                    <div class="tc_img" data-aos="fade-up" data-aos-offset="100" data-aos-duration="800"><img src="/resources/service/env/images/main/tree_count06.png" alt="tree_count06"></div>
                                    <h1 data-aos="fade-up" data-aos-offset="100" data-aos-duration="800">Total amount of <br class="br_m">reduction </h1>
                                    <p class="count" data-aos="fade-up" data-aos-offset="100" data-aos-duration="800"><span></span>per pine tree</p>
                                </li>
                            </ul>
                        </div>

                    </div>
            </section>

    <script>

        const isComplete1Tag = $("#totalTreeRate_isComplete");
        const isComplete2Tag = $("#totalTreeSum_isComplete");

        // HTML 태그
        const treeLeft1 = $("#treeLeft1");
        const treeLeft2 = $("#treeLeft2");
        const treeLeft3 = $("#treeLeft3");
        const treeRight1 = $("#treeRight1");
        const treeRight2 = $("#treeRight2");

        const totalTreeSum = $("#totalTreeSum");
        const totalTreeRate = $("#totalTreeRate");


        // 관리자에서 입력받은 고정값 한번만 계산
        // 페이지 불러올 때 한번만 계산하도록
        const graphGoal = Number($("#graphGoal").val());

        let treeLeft1Val_Fix = Number($("#solarDvlp").val());
        let treeLeft2Val_Fix = Number($("#digstntakRevivgas").val());
        let treeLeft3Val_Fix = Number($("#etcDvlp").val());
        let treeRight1Val_Fix = Number($("#digstngasDvlp").val());
        let treeRight2Val_Fix = Number($("#steamDvlp").val());

        // 1초에 살린 수 계산
        treeLeft1Val_Fix = treeLeft1Val_Fix / 365 / 24 / 60 / 60;
        treeLeft2Val_Fix = treeLeft2Val_Fix / 365 / 24 / 60 / 60;
        treeLeft3Val_Fix = treeLeft3Val_Fix / 365 / 24 / 60 / 60;
        treeRight1Val_Fix = treeRight1Val_Fix / 365 / 24 / 60 / 60;
        treeRight2Val_Fix = treeRight2Val_Fix / 365 / 24 / 60 / 60;
        // 고정값 //

        function fn_getMainTreeInfo() {

            // 메인 불러오기 완료된 경우
            if (isComplete1Tag.val() === "true" && isComplete2Tag.val() === "true") {
                fn_getMainTeeInfoResultView();
            }

        }

        function fn_getMainTeeInfoResultView(webResult) {

            var now = new Date();
            var start = new Date(now.getFullYear(), 0, 0);
            var diff = (now - start) + ((start.getTimezoneOffset() - now.getTimezoneOffset()) * 60 * 1000);
            var oneDay = 1000 * 60 * 60 * 24;
            var untilNowDayCnt = Math.floor(diff / oneDay);

            // 현재 시간 (일 수)
            var nowDayCntSec = untilNowDayCnt * 86400;

            // 현재 시간 (시)
            var nowDayHourSec = now.getHours() * 3600;

            // 현재 시간 (분)
            var nowDayMinuteSec = now.getMinutes() * 60;

            // 현재 시간 (초)
            var nowDaySec = now.getSeconds();

            // 현재까지의 시간 초 계산
            var totalNowTimeSecond = nowDayCntSec + nowDayHourSec + nowDayMinuteSec + nowDaySec;

            // 현재 살린 소나무 수 계산
            let treeLeft1Val = Math.round(treeLeft1Val_Fix * totalNowTimeSecond);
            let treeLeft2Val = Math.round(treeLeft2Val_Fix * totalNowTimeSecond);
            let treeLeft3Val = Math.round(treeLeft3Val_Fix * totalNowTimeSecond);
            let treeRight1Val = Math.round(treeRight1Val_Fix * totalNowTimeSecond);
            let treeRight2Val = Math.round(treeRight2Val_Fix * totalNowTimeSecond);

            // 하단 소나무 수 리로딩
            let isSubTreeChanged = false;

            isSubTreeChanged = fn_getLoadSubTreeCount(treeLeft1, treeLeft1Val, 0, 500, isSubTreeChanged);

            isSubTreeChanged = fn_getLoadSubTreeCount(treeLeft2, treeLeft2Val, 2, 500, isSubTreeChanged);

            isSubTreeChanged = fn_getLoadSubTreeCount(treeLeft3, treeLeft3Val, 4, 500, isSubTreeChanged);

            isSubTreeChanged = fn_getLoadSubTreeCount(treeRight1, treeRight1Val, 1, 500, isSubTreeChanged);

            isSubTreeChanged = fn_getLoadSubTreeCount(treeRight2, treeRight2Val, 3, 500, isSubTreeChanged);
            // 하단 소나무 수 리로딩 //

            // 변경된 소나무 수가 있다면 총 카운트 / 그래프 재출력
            if (isSubTreeChanged === true) {

                let totalTreeSumCount = Number(treeLeft1.val());
                totalTreeSumCount += Number(treeLeft2.val())
                totalTreeSumCount += Number(treeLeft3.val())
                totalTreeSumCount += Number(treeRight1.val())
                totalTreeSumCount += Number(treeRight2.val())

                totalTreeSum.val(totalTreeSumCount);

                // 총 그루 수 출력
                $({ val : 0 }).animate({
                    val : totalTreeSumCount
                },
                {
                    duration: 500,
                    step: function() {
                        var num = numberWithCommas(Math.floor(this.val));
                        $(".tree_counts li:eq(5) .count span").text(num);
                        $(".mov_num2").text(num);
                    },
                    complete: function() {
                        var num = numberWithCommas(Math.floor(this.val));
                        $(".tree_counts li:eq(5) .count span").text(num); // 하단 총 감축량 변경
                        $(".mov_num2").text(num); // 상단 총 감축량 변경
                    }
                });

                // 그래프 출력
                let prevTotalTreeRateVal = totalTreeRate.val(); // 이전 데이터

                let totalTreeRateVal = (totalTreeSumCount / graphGoal) * 100;
                totalTreeRateVal = totalTreeRateVal.toFixed(2);

                // 그래프는 변동 비율이 적어서 변경된 경우에만 재출력
                if (prevTotalTreeRateVal != totalTreeRateVal) {

                    $({ val : prevTotalTreeRateVal }).animate({ val : totalTreeRateVal }, {  // 이전 데이터값 변수 저장 (val값에)
                        duration: 500,
                        step: function() {
                            var num = numberWithCommas(Math.round(this.val * 100) / 100);
                            $(".mov_num1").text(num);
                            $('.carbon_chart').css({"background":"conic-gradient(#7bcc40 0% , #198c7a " + (num / 2) + "%, #198c7a " + num + "%, transparent "+ num + "% 100%)"});
                        },
                        complete: function() {
                            var num = numberWithCommas(Math.round(this.val * 100) / 100);
                            $(".mov_num1").text(num);
                            $('.carbon_chart').css({"background":"conic-gradient(#7bcc40 0% , #198c7a " + (num / 2) + "%, #198c7a " + num + "%, transparent "+ num + "% 100%)"});
                            totalTreeRate.val(totalTreeRateVal);
                        }
                    });

                }

            }

        }

        function fn_getLoadSubTreeCount(targetTag, treeCntVal, liIndex, pDuration, isSubTreeChanged) {

            // 이미 변경여부 Y로 들어온경우 Y 삽입
            if (isSubTreeChanged === true) {
                isChanged = true;
            } else {
                isChanged = false;
            }

            if (Number(targetTag.val()) !== treeCntVal) {

                isChanged = true;

                $({ val : 0 }).animate({ val : treeCntVal }, {
                    duration: pDuration,
                    step: function() {
                        var num = numberWithCommas(Math.floor(this.val));
                        $(".tree_counts li:eq(" + liIndex + ") .count span").text(num);
                    },
                    complete: function() {
                        var num = numberWithCommas(Math.floor(this.val));
                        $(".tree_counts li:eq(" + liIndex + ") .count span").text(num);
                     }
                });

                targetTag.val(treeCntVal);

            }

            return isChanged;

        }

        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }

    </script>