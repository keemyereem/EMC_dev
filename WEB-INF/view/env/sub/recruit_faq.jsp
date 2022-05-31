<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

        <form name="mainForm" id="mainForm" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

            <div class="sub_visual recruit_visual">
                <div class="sub_visual_nav">
                    <h2>인재채용</h2>
                    <div class="sub_visual_nav_prev">
                        <a href="javascript:linkBBS(4,0, 'BM0000000002');" title="이전메뉴로 이동">
                            <span>투자정보</span>
                            <img src="/resources/service/env/images/common/sub_visual_nav_prev.png" alt="sub_visual_nav_prev">
                        </a>
                    </div>
                    <div class="sub_visual_nav_next">
                        <a href="javascript:link(1,0);" title="다음메뉴로 이동">
                            <img src="/resources/service/env/images/common/sub_visual_nav_next.png" alt="sub_visual_nav_next">
                            <span>회사소개</span>
                        </a>
                    </div>
                </div>

                <!-- <div class="sub_visual_m">
                    <h2>인재채용</h2>
                    <div class="location">
                        <a href="javascript:;" class="loccation_tit" title="하위메뉴열기">채용정보</a>
                        <div class="drop_box">
                            <ul>
                                <li><a href="javascript:;" title="페이지 이동">인사제도</a></li>
                                <li class="active"><a href="javascript:;" title="페이지 이동">채용정보</a></li>
                            </ul>
                        </div>
                    </div>
                </div> -->

               <div class="sub_visual_menu">
                    <div class="home"></div>

                </div>

            </div>
            <div class="contents cont_recruit">
                <div class="contents_inner">
                    <div class="icon" data-aos="fade-up">
                        <img src="/resources/service/env/images/recruit/recruit_tit_icon.png" alt="타이틀 아이콘">
                    </div>
                    <h3 class="title" data-aos="fade-up" data-aos-offset="200">채용정보</h3>
                    <div class="tit_line"></div>
                    <div class="recruit_contents sub_contents" data-aos="fade-up" data-aos-duration="700">

                        <jsp:include page="/WEB-INF/view/env/sub/inc/recruitTab.jsp" />

                        <div class="faq" data-aos="fade-up" data-aos-offset="400">
                        <!-- Q1 -->
                            <div class="que"><p>입사 지원 안내</p></div>
                            <div class="ans"><p>
                                ① 구인사이트(사람인)에서 직무/지역 등을 확인하시어 지원하는 방법과<br>
                                ② 입사지원서, 개인정보 활용수집동의서(입사지원용) 작성하시어 채용담당자에게 <br class="br_m">송부하는 방법이 있습니다.<br><br class="br_m">

                                문의/수신처 : freshwater@emc-env.com<br><br class="br_m">

                                첨부 : <a href="/resources/service/env/download/job_application.docx" download="입사지원서__개인정보_수집·이용_동의서(입사지원용)">입사지원서, 개인정보 활용수집동의서(입사지원용)</a>
                            </p></div>
                        <!-- Q2 -->
                            <div class="que"><p>채용 절차는 어떻게 되나요?</p></div>
                            <div class="ans"><p>
                                ① 서류전형 : 지원자께서 제출해 주신 경험과 역량(학력사항, 전공 등)등을 검토해 모집 분야와의 연관성을 종합적으로 판단합니다.<br>
                                ② SKCT(인성검사) : SK종합역량검사(SK Competency Test)는 해당 직무에 맞는 역량을 보유하고 있는지를 판단합니다.<br>
                                ③ 면접(1차, 2차) : 지원자의 가치관, 성격, 보유역량 수준 등을 종합적으로 검증하는 단계입니다.<br>
                                ④ 처우협의 : 면접 합격자에 한하여 출근 일, 처우 및 보상 등을 협의/확정 합니다.<br>
                                ⑤ 최종합격<br><br>
                                ※ 입사 Position 및 부서 상황에 따라 변경 될 수 있습니다.

                            </p></div>
                        <!-- Q3 -->
                            <div class="que"><p>여러 사업소/현장에 중복으로 지원 가능한가요?</p></div>
                            <div class="ans"><p>
                                아닙니다. 지원서를 중복하여 제출하실수 없으므로, 공고 내용/지역을 꼼꼼하게 확인하시고 지원해 주시기 바랍니다.
                            </p></div>
                        <!-- Q4 -->
                            <div class="que"><p>응시횟수에 제한이 있습니까?</p></div>
                            <div class="ans"><p>응시횟수에 제한이 없으며, 불합격 후 재지원에 따른 불이익도 없습니다.</p></div>
                        <!-- Q5 -->
                            <div class="que"><p>보훈대상자/장애인은 가점이 있습니까?</p></div>
                            <div class="ans"><p>
                                보훈대상자, 장애인은 관련 법령에 의거하여 우대하고 있습니다.<br><br>
                                SK그룹 차원의 사회적 가치 창출에 기여하기 위해 장애인 고용을 법적기준(3.1%) 이상 채용하고자 노력중입니다.<br class="br_pc">
                                현재 보훈대상자, 장애인 구성원 분들은 본사, 현장, 장애인선수단 등 여러 곳에서 자기의 역할을 수행하고 있습니다.<br class="br_pc">
                                우리 회사는 장애인에 대한 차별이 없으며, 해당 직무 수행에 관심있으시면 적극 지원 바랍니다.
                            </p></div>
                        <!-- Q6 -->
                            <div class="que"><p>지원자격/우대사항이 있나요?</p></div>
                            <div class="ans"><p>
                                우리 EMC는 직무별 자격 요건에 해당하면 누구나 지원 가능하며, 학력/성별에 따른 차별도 없습니다.<br class="br_pc">
                                해외여행에 결격사유가 없어야 하며, 병역을 필하거나 면제된 자에 한해 지원 가능합니다.<br class="br_pc">
                                직무 관련 자격증 보유자, 관련 경험 보유자를 우대하고 있습니다.
                            </p></div>
                        <!-- Q7 -->
                            <div class="que"><p>SKCT는 어떤 시험인가요?</p></div>
                            <div class="ans"><p>
                                SKCT(SK Competency Test)는 SK에서 직무를 수행하기 위해 요구되는 다양한 역량을 <br>종합적인 관점에서 측정하는 종합 역량검사로 2013년 도입되었습니다.<br><br>
                                SKCT는 해당 직무에 맞는 역량을 보유하고 있는지를 판단하기 위해 직무 별 유형이 다르게 운영되고 있으며 다양한 관점에서
                                지원자를 평가하는 검사로, 거짓으로 응답하고자 자신을 사실과 다르게 포장하는 경우 불합격 조치될 수 있으니 솔직하게
                                응답해 주시기 바랍니다.<br><br>
                                <a href="https://www.skcareersjournal.com/2303" target="_blank">※ 참고 : SK 채용 공식블로그(SKCT, 어떻게 풀어야 될까?)</a>

                            </p></div>
                        <!-- Q8 -->
                            <div class="que"><p>기타 유의사항은 무엇이 있나요?</p></div>
                            <div class="ans"><p>지원서 또는 제출서류 상 허위 기재가 있을 경우, 전형단계에서의 불이익 및 채용이 취소될 수 있습니다.</p></div>
                        </div>

                    </div>
                </div>
            </div>

</form>

<script>
    currentPageNum(5,1);

    $(document).ready( function() {
        recruitEvent.init();
    });
</script>
