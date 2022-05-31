<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="file" uri="/WEB-INF/tlds/fileLib.tld"%>
 
							
                                    <div class="box_text" data-aos="fade-up" data-aos-duration="700">
                                        <div class="onm_title"><c:out value="${onm_title }" /></div>
                                        <div class="onm_desciption">
                                        <c:if test="${webResult.params.searchClCode eq 'A012003'}">    
                                            As the No. 1 operator in the field of public sewage & wastewater treatment, we currently operate 1,041 facilities nationally
                                        </c:if>    
                                        <c:if test="${webResult.params.searchClCode eq 'A012004'}">
                                            With the record of operating the highest number of various waste treatment facilities 
                                            (such as drying facilities, incineration, biological treatment facilities, and landfills), 
                                            we are in charge of 22 facilities nationwide that employ advanced technologies.       
                                         </c:if>
                                         <c:if test="${webResult.params.searchClCode eq 'A012005'}">
                                            We are actively expanding our services in the private industrial wastewater treatment sector, by utilizing our skills and many years of experience to meet customer needs.
                                         </c:if>
                                         <c:if test="${webResult.params.searchClCode eq 'A012006'}">
                                            We run the water treatment facility for Korea's largest electronics manufacturer, 
                                            and we are striving to become the No. 1 operator in all areas of water treatment.                                            
                                         
                                         </c:if>
                                         <c:if test="${webResult.params.searchClCode eq 'A012007'}">
                                            We are introducing technology and creativity from the private sector to public sewer pipe maintenance. 
                                            We are currently operating 16 locations across the country, including the Jincheon-gun Sewer Pipeline Build-Transfer-Lease Maintenance Project (BTL), the first of the “Sewage Pipeline BTL projects” 
                                            that has been implemented nationwide since 2005, for the purpose of improving the efficiency of sewage treatment through the all-out maintenance of defective sewer pipes.                                                                                  
                                         </c:if>
                                         <c:if test="${webResult.params.searchClCode eq 'A012008'}">
                                            We have performed a number of comprehensive commissioning projects, and can provide a one-stop service from the construction of a domestic environmental infrastructure to its comprehensive commissioning and operation.                                                                           
                                         </c:if>
                                         
                                         
                                         <c:if test="${webResult.params.searchClCode eq 'A012009'}">
                                            We are devoted to preserving water quality conditions and expanding the boundaries of green industries through the design and construction of public sewage and wastewater treatment facilities, 
                                            based on the know-how and technologies we have gained from years of operating the highest number of basic environmental facilities.                                          
                                         </c:if>
                                         <c:if test="${webResult.params.searchClCode eq 'A012010'}">
                                            We strive to preserve water quality conditions and expand the boundaries of green industries through the design and construction of public sewage and wastewater treatment facilities, 
                                            based on the know-how and technologies we have gained from years of operating the highest number of basic environmental facilities.                                   
                                         </c:if>
                                         <c:if test="${webResult.params.searchClCode eq 'A012011'}">
                                            As part of building an energy circulation system to achieve carbon neutrality by 2050, we are carrying out projects based on our accumulated building technologies, 
                                            such as organic waste bio gasification facilities, incineration facilities/residual heat power generation facilities, and water reuse facilities.                                   
                                         </c:if>
                                            
                                        </div>
                                    </div>
                                    
                                    <c:choose>
                                    <c:when test="${webResult.params.searchClCode eq 'A012003' or webResult.params.searchClCode eq 'A012009'}">
	                                    <%// 첫번재 카테고리 만 %>
	                                    <div class="swiper-container" id="slideList_<c:out value="${section_no}" />">
	                                         
	                                                                       
	                                    </div>
                                    
                                    </c:when>
                                    <c:otherwise>
                                    
	                                    <div class="swiper" data-aos="fade-left" data-aos-duration="700">
	                                        <div class="swiper-wrapper" id="slideList_<c:out value="${section_no}" />">
	                                            
	                                        </div>
	                                    </div>
                                    
                                    </c:otherwise>
                                    </c:choose>
                                                                        
                                    
                                    <div class="onm_box_slider_button" data-aos="fade-up" data-aos-duration="700">                                        
                                        <c:choose>
                                        <c:when test="${section_no ne 1 }">
                                        
                                        <div class="swiper-button-next swiper-button-next0<c:out value="${section_no}" />"></div>
                                        <div class="swiper-button-prev swiper-button-prev0<c:out value="${section_no}" />"></div>
                                        
                                        </c:when>
                                        <c:otherwise>
                                        
                                        <div class="swiper-button-next swiper-button-next01_01"></div>
                                        <div class="swiper-button-prev swiper-button-prev01_01"></div>
                                        
                                        </c:otherwise>
                                        </c:choose>
                                        
                                    </div>
                                
                                
<script>
fnSubCategoryList('<c:out value="${searchCtgryNo}" />','1');

</script>
                                										