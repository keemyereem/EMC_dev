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

                        <div class="job_intro">
                            <section class="section1">
                                <div class="s_title_img" data-aos="fade-up" data-aos-offset="400">
                                    <img src="/resources/service/env/images/recruit/job_intro_tit.png" alt="Job Introduction">
                                    <img src="/resources/service/env/images/recruit/job_intro_tit_m.png" alt="Job Introduction">
                                </div>
                                <h3 data-aos="fade-up" data-aos-offset="400">주요 직무 소개</h3>
                                <p data-aos="fade-up" data-aos-offset="400">명확한 업무분담, 분야별 효율적인 업무수행</p>
                            </section>
                            <section class="section2">
                                <div class="job_intro_box_wrap job_intro_box_wrap01">
                                    <div class="job_intro_box job_intro_box01" data-aos="fade-up" data-aos-offset="400">
                                        <!-- <div class="img"><img src="/resources/service/env/images/recruit/job_intro_img01.jpg" alt="환경 직무소개 이미지"></div> -->
                                        <div class="txt">
                                            <div class="tit">수처리 공정</div>
                                            <ul>
                                                <li>공공하∙폐수 적정처리를 위한 공정별 처리시설 운전</li>
                                                <li>처리시설 공정인자 및 방류수질 관리</li>
                                                <li>공정관리 전반에 대한 기록 유지</li>
                                                <li>처리효율 증대를 위한 운전조건 개선</li>
                                                <li>사업장 약품 및 폐기물 배출 관리</li>
                                                <li>관리대행 성과평가 및 운영실태평가 자료 관리</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box02" data-aos="fade-up" data-aos-offset="400">
                                        <!-- <div class="img"><img src="/resources/service/env/images/recruit/job_intro_img02.jpg" alt="기계 직무소개 이미지"></div> -->
                                        <div class="txt">
                                            <div class="tit">분석</div>
                                            <ul>
                                                <li>시험∙검사기관의 정도관리 (Quality Control) </li>
                                                <li>사업관련 High Quality 수질분석 Data 생산</li>
                                                <li>환경오염 영향인자 Detection 및 Data 분석</li>
                                                <li>품질시스템(품질문서) 기반의 실험실 운영</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box03" data-aos="fade-up" data-aos-offset="400">
                                        <!-- <div class="img"><img src="/resources/service/env/images/recruit/job_intro_img03.jpg" alt="전기 직무소개 이미지"></div> -->
                                        <div class="txt">
                                            <div class="tit">기계</div>
                                            <ul>
                                                <li>시설 현장 기계설비보전 및 유지보수 업무 </li>
                                                <li>처리시설 別 설비 운영 System 구축</li>
                                                <li>기계 설비/운영 문제점 도출 및 개선</li>
                                                <li>예방/일상/개선/사후/예측 보전</li>
                                                <li>시설 기계장치 대수선 계획 수립</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box04" data-aos="fade-up" data-aos-offset="400">
                                        <!-- <div class="img"><img src="/resources/service/env/images/recruit/job_intro_img04.jpg" alt="관리 직무소개 이미지"></div> -->
                                        <div class="txt">
                                            <div class="tit">전기</div>
                                            <ul>
                                                <li>전기 설비보전 계획 수립 및 유지보수 업무</li>
                                                <li>예방/일상/개선/사후/예측 보전</li>
                                                <li>보전 계획에 따른 점검/정비 수행</li>
                                                <li>공사 원가계산/집행</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box05" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">관리</div>
                                            <ul>
                                                <li>현장 사업계획 및 예산/회계 업무</li>
                                                <li>기성청구 및 원가 안분 업무, 발주처 대응</li>
                                                <li>기타 계약, 물품구매, 자산관리</li>
                                                <li>일반행정 업무</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box06" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">안전 보건</div>
                                            <ul>
                                                <li>운영 현장 안전보건 확보(Safety & Health)</li>
                                                <li>안전·보건관리 방침 및 안전보건</li>
                                                <li>안전 관리체계 수립 및 이행</li>
                                                <li>중대재해 근절을 위한 ACTIVITY 추진</li>
                                                <li>사업장 안전·보건 진단 및 개선지원</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box07" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">건설현장</div>
                                            <ul>
                                                <li>건설현장 시공검측/품질관리 업무</li>
                                                <li>협력업체 및 공사원가 관리  업무</li>
                                                <li>기성 및 설계변경 등 공무 업무</li>
                                                <li>안전 및 환경 관리 업무</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="job_intro_box_wrap job_intro_box_wrap02">
                                    <div class="job_intro_box job_intro_box01" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">영업</div>
                                            <ul>
                                                <li>공공/민간 환경기초시설 O&M 수주 실무</li>
                                                <li>정보수집 및 사업성 검토</li>
                                                <li>입찰(PQ,PP) 및 협상/계약체결</li>
                                                <li>운영사업장 E/S 및 변경계약 관리</li>
                                                <li>O&M 사업 면허, 실적, 보증 관리</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box02" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">재무</div>
                                            <ul>
                                                <li>회사 회계 결산 관리 및 연결재무제표 작성</li>
                                                <li>정기/수시 세무조사 대응, 현장 회계관리 지원</li>
                                                <li>이사회 및 주주총회 관리, 공시 업무</li>
                                                <li>법인세, 부가가치세, 지방세 등 신고/납부</li>
                                                <li>입/출금, 신용평가, 인수금융약정 관리</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box03" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">전략기획</div>
                                            <ul>
                                                <li>회사 중장기 사업전략 수립, 실행</li>
                                                <li>경영 기획/관리, 사업계획, KPI 수립/관리</li>
                                                <li>대내/외 경영 환경 분석 및 Risk Mgmt.</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box04" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">HR</div>
                                            <ul>
                                                <li>회사 전반적인 인력 운영 및 전략 계획 수립</li>
                                                <li>조직문화 개선 구성원 행복 증진 Program 수립/실행 </li>
                                                <li>구성원 평가 및 보상 업무</li>
                                                <li>인재 양성 교육 기획 및 법정 교육 운영</li>
                                                <li>Pay Roll 및 퇴직금 등 신고/납부</li>
                                                <li>복리후생제도 및 자산 관리/운영</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box05" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">Compliance</div>
                                            <ul>
                                                <li>환경 정책/제도 개선을 위한 대외협력(CR)</li>
                                                <li>대외 홍보 및 브랜드 관리(PR)</li>
                                                <li>Compliance Program 운영</li>
                                                <li>윤리경영 시스템 구축 및 운영</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box06" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">법무팀</div>
                                            <ul>
                                                <li>계약검토/법률자문, Claim 대응 법무지원</li>
                                                <li>민/형사, 행정 분쟁 해결 및 소송 업무</li>
                                                <li>Governance 분야 법무지원</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box07" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">SOC</div>
                                            <ul>
                                                <li>신규 SOC 사업 검토 및 발굴</li>
                                                <li>SOC 사업을 위한 공정 검토, 운영계획 검토</li>
                                                <li>설계 및 각종 용역 관리 업무</li>
                                                <li>주무관청 및 한국환경공단 협상 업무</li>
                                                <li>공사/운영 사업 관리</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box08" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">운영/시설개선</div>
                                            <ul>
                                                <li>현장 운영관리 효율화를 위한 진단제도 운영</li>
                                                <li>수질 Trouble 개선 및 안정화를 위한 기술지원</li>
                                                <li>수질관리를 위한 체계 구축 및 관리</li>
                                                <li>시설물 정기⦁정밀점검 수행/ 정밀점검 통합계약</li>
                                                <li>현장 일반운영 관리 및 발주처 대응 지원</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="job_intro_box_wrap job_intro_box_wrap03">
                                    <div class="job_intro_box job_intro_box01" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">폐기물 소각 </div>
                                            <ul>
                                                <li>소각로 Operation (소각로 운영, 점검 및 유지보수)</li>
                                                <li>신재생 에너지(증기생산, 발전터빈) 제반 시설 운영 관리</li>
                                                <li>대기오염 방지 시설 관리</li>
                                                <li>중앙제어실 관리(크레인 운전)</li>
                                                <li>소각로 공정관리 </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box02" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">매립</div>
                                            <ul>
                                                <li>매립장 운영 계획수립 및 시행</li>
                                                <li>시설 유지ㆍ관리 상태 확인 및 점검, 보수</li>
                                                <li>매립장 다짐 및 침하여부 측정</li>
                                                <li>우수배제시설 등 시설물 유지ㆍ관리 </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="job_intro_box job_intro_box03" data-aos="fade-up" data-aos-offset="400">
                                        <div class="txt">
                                            <div class="tit">폐유ㆍ재생유 처리</div>
                                            <ul>
                                                <li>지정폐기물 처리 계획 수립</li>
                                                <li>액상 폐유, 폐유기용제 처리 및 관리</li>
                                                <li>재생유 처리장치 조작</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>

                    </div>
                </div>
            </div>

</form>

            <script>currentPageNum(5,1);</script>
