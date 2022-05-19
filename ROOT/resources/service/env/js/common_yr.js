
$(function(){
    var w = $(window).width();
	responsiveImage(w);

    commonEvent.init();

    //Run AOS - Global Setting
    AOS.init({
        // offset: 120,
        //delay: 500,
        //mirror: false,
        once: true,
        easing: 'ease-in-sine',
        duration: 500,
        anchorPlacement: 'bottom-bottom',
        startEvent: "load"
    });
    // 페이지 타이틀, 라인, 사이트맵 내용 지정 
    const aos_order1 = document.querySelector('.title');
    const aos_order2 = document.querySelector('.tit_line');
    const aos_order3 = document.querySelector('.sitemap');
    
    // 페이지 타이틀, 라인, 설명 각각 모션효과 종료될 때 다음 모션 진행하도록 
    aos_order1.addEventListener('transitionend', () => {
        $(aos_order2).addClass('on');
        aos_order2.addEventListener('transitionend', () => {
            $('.sub_con').addClass('on');
        });  
    });

    // 사이트맵 출력 후 메뉴 나타나게 하는 모션 효과
    aos_order3.addEventListener('transitionend', () => {
        $(this).find('li p, h2, .depth_list').addClass('on');
        if ($(aos_order3).hasClass('on') ==! true) { 
            $(aos_order3).find('li p, h2, .depth_list').removeClass('on');
        } 
    });

});

var resizeEvent;

$(window).on("resize", function() {
	resizeEvent = setTimeout(function(){
		var w = $(window).width();
		responsiveImage(w);
	}, 200);

});

// Responsive Image 
function responsiveImage(w) {
    var src = "src-pc";
    if (w <= 650) src = "src-mobile";
    else if (w <= 1024 && w > 650) src = "src-tablet";
    else src = "src-pc";

    var obj;
    var img = $('body').find('img');
    for(var i=0; i<img.length; i++) {
        obj = img.eq(i);
        if (obj.data(src)) obj.attr('src', obj.data(src));
    }
    

}

var commonEvent = {
    init:function(){
        this.submenuEvent();
        this.headerEvent();
        this.goTopEvent();
        this.footerEvent();
    },
    submenuEvent:function(){
        $(document).on('click', '.sub_visual_menu .depth', function(){
            $(this).toggleClass("open");
        });

        $(document).on('click', '.sub_visual_menu .depth .drop_box li a', function(){
            var selected = $(this).text();
            var dep_tit = $(this).closest('.drop_box').siblings('.dep_tit');
            dep_tit.text(selected);  
            

            var depth2W = $('.sub_visual_menu .depth2');
            var depth2Tit = $('.sub_visual_menu .depth2 .dep_tit').text();
            if( depth2Tit == '공정거래 자율준수 프로그램' ){
                depth2W.width('326px');
            }else{
                if($(window).width()>1024){
                    depth2W.width('225px');
    
                }else{
                    depth2W.width('calc(100% -5rem)');
                }
            }
        });

        var depth2W = $('.sub_visual_menu .depth2');
        var depth2Tit = $('.sub_visual_menu .depth2 .dep_tit').text();
        if( depth2Tit == '공정거래 자율준수 프로그램' ){
            depth2W.width('326px');
        }else{
            if($(window).width()>1024){
                depth2W.width('225px');

            }else{
                depth2W.width('calc(100% -5rem)');
            }
        }



    },
    headerEvent:function(){

        $(window).on('scroll',function(){
            const st = $(window).scrollTop();
            let anchor1 = $('.section1')
            let cirTxt = $('.text-circle');

            if (st>=100){
                $('.header').addClass('fixed'); 
                if (anchor1.length) {
                    let badge = anchor1.offset().top;
                    if (st >= badge - 500) {
                        cirTxt.find('img').eq(0).css('display','none');
                        cirTxt.find('img').eq(1).css('display','block');
                    } else {
                        cirTxt.find('img').eq(0).css('display','block');
                        cirTxt.find('img').eq(1).css('display','none');
                    }
                }
            } else{
                $('.header').removeClass('fixed');
                cirTxt.find('img').eq(0).css('display','block');
                cirTxt.find('img').eq(1).css('display','none');
            }
            //console.log(st);
        });

        // 번역페이지 버튼 온/오프
        $(document).on('click', '.lang_choice li', function(){
            $('.lang_choice li').removeClass('on');
            $(this).addClass('on');  
        });

        // 사이트맵 메뉴 출력
        $(document).on('click', '.top_sitemap', function(){
            $(this).toggleClass('on col_b');
            $('.sitemap, .sitemap_bg, .lang_choice, .header').toggleClass('on');

            if ($(this).hasClass('on')) {
                $('.header_wrap h1, .header_wrap .gnb').addClass('off');
                $('.sitemap li p, .sitemap h2, .sitemap .depth_list').addClass('on');
                $('.wrap').on('scroll touchmove mousewheel', function(event) {
                    event.preventDefault();
                    event.stopPropagation();
                    return false;
                });
            } else {
                $('.header_wrap h1, .header_wrap .gnb').removeClass('off');
                $('.sitemap li p, .sitemap h2, .sitemap .depth_list').removeClass('on');
                $('.wrap').off('scroll touchmove mousewheel');
            }
        });
    },
    goTopEvent:function() {
        $(window).scroll(function() {
            // top button controll
            if ($(this).scrollTop() > 500) {
                $('#topButton').fadeIn();
            } else {
                $('#topButton').fadeOut();
            }
            var footerTop = $('.footer').offset().top - $(window).outerHeight();
            var pos = $('.footer').outerHeight() + Number(80);
            
            if($(this).scrollTop() > footerTop){
                $('#topButton').addClass('on').css({'bottom':pos});
            }else {
                $('#topButton').removeClass('on').css({'bottom':'8rem'});
            }
        });

        $(document).on('click', '#topButton', function() {
            $('html, body').animate({scrollTop:0}, '300');
        });
    },
    
    footerEvent:function(){
        //family site event
        $(document).on("click",".footer .family_site .site_link .link_open",function(){
            var selElm = $(this).parent();
            if(!selElm.hasClass("open")){
                selElm.addClass("open");
            }else{
                selElm.removeClass("open");
            }
        });
        
    },
};

////////////////////////////////////////////// O&M 수처리 페이지 이벤트 (FD-02-01-0011)
var onmEvent = {
    init:function(){
        this.onmSwiper();
    },
    onmSwiper:function(){
        // 탭 버튼 및 2depth 탭 버튼
        var Tabs = $('.business_contents .section1 .nav_btn li');
        var Tabs_depth2 = $(".swiper_2depth_tabs p");
        
        
        $(".swiper").each(function(index, element){

            // 첫번째 슬라이드 2depth 스와이퍼 
            var swiper1 = new Swiper('.swiper1_0' + index, {
                observer: true,
                observeParents: true,
                slidesPerView : 2,
                spaceBetween: 70,
                speed: 700,
                
                navigation: {
                    nextEl: '.swiper-button-next01_01',
                    prevEl: '.swiper-button-prev01_01',
                },
                watchOverflow: true,

                breakpoints: {
        
                    768: {
                      slidesPerView: 1,  //브라우저가 768보다 클 때
                      spaceBetween: 20,
                    },
                    1024: {
                      slidesPerView: 2,  //브라우저가 1024보다 클 때
                      spaceBetween: 70,
                    },
                  },   
            });

            // 탭 메뉴 슬라이드 스와이퍼
            var $this = $(this);
            $this.addClass('swiper' + index);

            var swiper = new Swiper('.swiper' + index, {
                observer: true,
                observeParents: true,
                slidesPerView : 2,
                spaceBetween: 70,
                speed: 700,
                
                navigation: {
                    nextEl: '.swiper-button-next0' + index,
                    prevEl: '.swiper-button-prev0' + index,
                },
                watchOverflow: true,

                breakpoints: {
        
                    768: {
                      slidesPerView: 1,  //브라우저가 768보다 클 때
                      spaceBetween: 20,
                    },
                    1024: {
                      slidesPerView: 2,  //브라우저가 1024보다 클 때
                      spaceBetween: 70,
                    },
                  },  
            });
            
            // 탭버튼 function
            Tabs.on("click", function() {
                // 탭 버튼 CSS 액티브 효과
                $(this).addClass('on');
                $(this).siblings().removeClass('on');
                
                // Tab버튼 index값 추출
                var Tabs_idx = Tabs.index(this)+1;

                // 클릭요소 제외한 다른 슬라이드 컨테이너, 탭 버튼 및 AOS 모션 삭제
                $('.section2 .nav_box').removeClass('on');
                $('.box_text, .swiper, .swiper_2depth_tabs, .onm_box_slider_button').removeClass('aos-animate');
                // 클릭요소의 슬라이드 컨테이너 출력
                $('.section2 .box0' + Tabs_idx).addClass('on');
                
                // 첫번째 슬라이드 컨테이너 내부 2Depth 슬라이드 컨테이너 초기화(첫번째로)
                $('.swiper1_box').hide();
                $('.swiper1_box01').css({display:'block'});

                setTimeout(function() {
                    // 클릭요소의 슬라이드 컨테이너 내부 AOS 모션 초기화
                    $('.box0' + Tabs_idx + ' .box_text, .box0' + Tabs_idx + ' .swiper, .swiper_2depth_tabs, .box0' + Tabs_idx + ' .onm_box_slider_button').addClass('aos-animate');

                    // 첫번째 슬라이드 컨테이너 내부 2Depth 탭 초기화(첫번째로)
                    Tabs_depth2.removeClass('on');
                    Tabs_depth2.eq(0).addClass('on');
                    swiper1.slideTo(0, 0);
                }, 0);

                // 클릭요소의 하단 그리드형 리스트 출력
                $('.section3 .onm_list').removeClass('on');
                $('.section3 .onm_list0' + Tabs_idx).addClass('on');
                
                // 모든 슬라이드 컨테이너 첫번째 슬라이드로 초기화
                swiper.slideTo(0, 0);
                
            });
            
            // 첫번째 슬라이드 컨테이너 내부 2depth 탭 버튼
            Tabs_depth2.on('click', function(){
                // 클릭한 2depth 탭 버튼 인덱스 값 추출 및 같은 인덱스값의 슬라이드 컨테이너 추적
                var idx = Tabs_depth2.index(this)+1;
                var tab_slide = $(this).parent().siblings('.swiper1_box');
                
                // 2depth 탭 버튼 CSS 액티브 효과
                Tabs_depth2.removeClass('on');
                $(this).addClass('on');
                
                // 2depth 클릭요소 제외한 다른 슬라이드 컨테이너 및 AOS 모션 삭제
                tab_slide.hide();
                $('.swiper1_box0' + idx).css({display:'block'});
                $('.swiper1_box .swiper').removeClass('aos-animate');

                setTimeout(function() {
                    // 2depth 클릭요소의 슬라이드 컨테이너 AOS 모션 초기화
                    $('.swiper1_box0' + idx + ' .swiper').addClass('aos-animate');

                    // 2depth 모든 슬라이드 컨테이너 첫번째 슬라이드로 초기화
                    swiper1.slideTo(0, 0);
                }, 0);
                
            });
        });
    },

    
};

//사업실적 팝업
function popupbusiness(popConts) {
    var popthis = $(".popup."+popConts);
    popthis.fadeIn(300);
    
    // 탭 메뉴 슬라이드 스와이퍼
    var popSlide = new Swiper('.inner_box', {
        slidesPerView : '1',
        watchOverflow : true,
        navigation: {  
            nextEl: '.inner_nav .next',
            prevEl: '.inner_nav .prev',
        },
        pagination: {
            el: ".counter_slider",
            type: 'fraction',
            formatFractionCurrent: function (number) {
                return ('0' + number).slice(-2);
            },
            formatFractionTotal: function (number) {
                return ('0' + number).slice(-2);
            },
            renderFraction: function (currentClass, totalClass) {
                return '<span class="' + currentClass + '"></span>' +
                        '/' +
                       '<span class="' + totalClass + '"></span>';
            }

        },


    })

    popthis.find(".pop_close").click(function(){
        popthis.fadeOut(300);
    });
}

var recruitEvent = {
    init:function(){
        this.faqToggle();
    },
    faqToggle: function(){
        $(".que").click(function() {
            $(this).next(".ans").stop().slideToggle(300);
            $(this).toggleClass('on').siblings().removeClass('on');
            $(this).next(".ans").siblings(".ans").slideUp(300); 
         });
    },
};

//기술역량 페이지 이벤트
var rndEvent = {
    init:function(){
        this.rndTab();
        this.focusTab();
    },
    rndTab: function(){
        var Tabs = $('.rnd_contents .nav_btn li');
        Tabs.on("click", function() {
            $(this).addClass('on');
            $(this).siblings().removeClass('on');
            
            var Tabs_idx = Tabs.index(this)+1;
            $('.section2 .tb_box').removeClass('on');
            $('.section2 .tb_box0' + Tabs_idx).addClass('on');
        });
    },

    focusTab: function() {
        $(document).ready(function() {
            const focused = document.querySelector('.focus')
                setTimeout (function() {
                    focused.scrollIntoView({behavior: "smooth", block: "nearest", inline: "center"});
                }, 1500)
            
        })
        
    }
};
// 에너지 페이지 이벤트
var energyEvent = {
    init:function(){
        this.enegySwiper();
    },
    enegySwiper: function(){
        var swiperEnergy = new Swiper('.energy_box', {
            observer: true,
            observeParents: true,
            slidesPerView : 1,
            spaceBetween: 70,
            speed: 1000,
            
            navigation: {
                nextEl: '.arrow.swiper-button-next',
                prevEl: '.arrow.swiper-button-prev',
            },
            watchOverflow: true,

            breakpoints: {

                768: {
                slidesPerView: 1,  //브라우저가 768보다 클 때
                spaceBetween: 20,
                },
                1024: {
                slidesPerView: 2,  //브라우저가 1024보다 클 때
                spaceBetween: 70,
                },
            },   
        });
    },
};

// 공법 페이지 이벤트
var methodEvent = {
    init:function(){
        this.subtab();
    },
    subtab: function(){
        
        var subtabList = $('.skills_contents .sub_tab li');
        subtabList.on('click', function(){
            var idx = subtabList.index(this)+1;
            var method_wrap = $(this).parents().siblings('.method_wrap');
            
            subtabList.removeClass('on');
            $(this).addClass('on');
            
            method_wrap.hide();
            $('.method_wrap0' + idx).css({display:'block'});
            $('.method_wrap').removeClass('aos-animate');
            // method_wrap.find('section').removeattr('data-aos');
            
            if(idx == 1) {
                $('.method_bg').css({display:'block'});
            }else {
                $('.method_bg').css({display:'none'});
            }
            
            setTimeout(function() {
                // method_wrap.find('section').addClass('aos-animate');
                $('.method_wrap0' + idx).addClass('aos-animate');
            }, 0);
        });
    },
    
};

////////////////////////////////////////////// 메인 페이지 이벤트 (FD-00-01-001)
var mainEvent = {
    
    init:function(){
        this.mainSwiper();
        this.sustainEvent();
        this.sustainSwiper();
        // skrollr.init();
        this.main_startEvent();
        this.treeEvent();
        this.treeCount();
        this.parallax();
    },
    mainSwiper:function(){
        var _ = this;

        var windowHeight = $(window).height();

        //main slider
        var slidemenu = ['01', '02', '03', '04']
        var mySwiper = new Swiper("#main_visual", {
            slidesPerView:1,
            slidesPerGroup:1,
            autoplay:{
                delay: 5000,
                disableOnInteraction: false
            },
            loop: true,
            navigation: {
              prevEl:"#fPrev",
              nextEl:"#fNext"
          },
          allowTouchMove: false,
          pagination: {
              el: '.swiper-pagination',
        	  clickable: true,
              renderBullet: function (index, className) {
                  return '<span class="' + className + '">' + (slidemenu[index]) + '</span>';
              },
          },
        });

        var dummyLen = 2;
        var mainLastPage = $(".main_visual .swiper-slide").length - dummyLen;

        var windowHeight = $(window).height();
        $(".main_visual .swiper-slide").height(windowHeight);

        $(".main_visual .naviPlay .lastPage").text(mainLastPage);

        $(".main_visual .naviPlay .playbar").eq(0).addClass("autoplay");

        window.onload = function(){
            setTimeout(function() {
                $(".main_visual .swiper-slide .txt").removeClass("on");
                $(".main_visual .swiper-slide.swiper-slide-active .txt").addClass("on");
            }, 100);
        }

        mySwiper.on("slideChangeTransitionStart",function(){
            var curIdx = this.activeIndex;
            if(curIdx > mainLastPage){
                curIdx = 1;
            }else if(curIdx < 1){
                curIdx = mainLastPage;
            }

            $(".main_visual .naviPlay .playbar").removeClass("autoplay");
            $(".main_visual .naviPlay .playbar.playbar").removeClass("active");
            if(!$(".main_visual .naviPlay .naviAuto a").hasClass("autoplay")){
                $(".main_visual .naviPlay .playbar.autoplay").removeClass("autoplay");
                $(".main_visual .naviPlay .playbar.playbar"+curIdx).addClass("active");
            }else{
                $(".main_visual .naviPlay .playbar").eq(curIdx-1).addClass("autoplay");
                $(".main_visual .naviPlay .playbar.playbar").removeClass("active");
            }

            $(".main_visual .swiper-slide .txt").removeClass("on");
            $(".main_visual .swiper-slide.swiper-slide-active .txt").addClass("on");

        });

        $(".main_visual .naviPlay .naviAuto a").on("click",function(){
            var idx = $(".swiper-pagination-bullet-active").index() + 1;
            if(!$(this).hasClass("autoplay")){
                $(this).find("img").attr("src","images/common/icon_pause.png");
                $(this).addClass("autoplay");
                mySwiper.autoplay.start();

                $(".main_visual .naviPlay .playbar.playbar"+idx).addClass("autoplay");
                $(".main_visual .naviPlay .playbar.playbar").removeClass("active");
            }else{
                $(this).find("img").attr("src","images/common/icon_play.png");
                $(this).removeClass("autoplay");
                mySwiper.autoplay.stop();

                $(".main_visual .naviPlay .playbar").removeClass("autoplay");
                $(".main_visual .naviPlay .playbar.playbar"+idx).addClass("active");
            }
        });
    },
    sustainEvent:function(){
        var sustain_bg =  $(".cont_main .section3 .sustain_list"),
            sustain_list = $(".cont_main .section3 .sustain_list ul li");

        $(sustain_list).eq(0).hover(function(){
            $(sustain_bg).find('img').css('display','none');
            $(sustain_bg).find('img').eq(0).css('display','block');
            $(sustain_list).css({'background-color':'transparent','width':'15%'});
            $(sustain_list).eq(0).css({'background-color':'rgba(128, 137, 84,.9);','width':'40%'});
        },function(){
            $(sustain_list).css({'background-color':'transparent','width':'20%'});
        });
        $(sustain_list).eq(1).hover(function(){
            $(sustain_bg).find('img').css('display','none');
            $(sustain_bg).find('img').eq(1).css('display','block');
            $(sustain_list).css({'background-color':'transparent','width':'15%'});
            $(sustain_list).eq(1).css({'background-color':'rgba(66, 96, 44,.8);','width':'40%'});
        },function(){
            $(sustain_list).css({'background-color':'transparent','width':'20%'});
        });
        $(sustain_list).eq(2).hover(function(){
            $(sustain_bg).find('img').css('display','none');
            $(sustain_bg).find('img').eq(2).css('display','block');
            $(sustain_list).css({'background-color':'transparent','width':'15%'});
            $(sustain_list).eq(2).css({'background-color':'rgba(118, 108, 97,.9);','width':'40%'});
        },function(){
            $(sustain_list).css({'background-color':'transparent','width':'20%'});
        });
        $(sustain_list).eq(3).hover(function(){
            $(sustain_bg).find('img').css('display','none');
            $(sustain_bg).find('img').eq(3).css('display','block');
            $(sustain_list).css({'background-color':'transparent','width':'15%'});
            $(sustain_list).eq(3).css({'background-color':'rgba(115, 132, 19,.7);','width':'40%'});
        },function(){
            $(sustain_list).css({'background-color':'transparent','width':'20%'});
        });
        $(sustain_list).eq(4).hover(function(){
            $(sustain_bg).find('img').css('display','none');
            $(sustain_bg).find('img').eq(4).css('display','block');
            $(sustain_list).css({'background-color':'transparent','width':'15%'});
            $(sustain_list).eq(4).css({'background-color':'rgba(120, 124, 143,.85);','width':'40%'});
        },function(){
            $(sustain_list).css({'background-color':'transparent','width':'20%'});
        });
    },

    sustainSwiper:function(){
        var ww = $(window).width();
        var mySwiper = undefined;
        
        function initSwiper() {
        
          if (ww < 768 && mySwiper == undefined) {
            mySwiper = new Swiper(".sustain_list .swiper-container", {
              slidesPerView: 1,
              spaceBetween: 0,
              simulateTouch: true,
              pagination: {
                  el: '.swiper-pagination',
                  clickable : true,
              },
            });
          } else if (ww >= 768 && mySwiper != undefined) {
            mySwiper.destroy();
            mySwiper = undefined;
          }
        }
        
        initSwiper();
        
        $(window).on('resize', function () {
          ww = $(window).width();
          initSwiper();
        });        
    },

    // 탄소수치 badge 카운트 시작
    numberCountUp1: function() {
        var memberCountConTxt1= 99.99;    // 갱신된 변수값 저장
        // var bezier_count = numberWithCommas(Math.floor(memberCountConTxt1));
        
        $({ val : 0 }).animate({ val : memberCountConTxt1 }, {  // 이전 데이터값 변수 저장 (val값에)
            duration: 5000,
            step: function() {
                var num = numberWithCommas(Math.round(this.val * 100) / 100);
                $(".mov_num1").text(num);
                $('.carbon_chart').css({"background":"conic-gradient(#7bcc40 0% , #198c7a " + (num / 2) + "%, #198c7a " + num + "%, transparent "+ num + "% 100%)"});
            },
            complete: function() {
                var num = numberWithCommas(Math.round(this.val * 100) / 100);
                $(".mov_num1").text(num);
                $('.carbon_chart').css({"background":"conic-gradient(#7bcc40 0% , #198c7a " + (num / 2) + "%, #198c7a " + num + "%, transparent "+ num + "% 100%)"});
            }
        });

        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{2})+(?!\d))/g, ".");
        }

    //     function draw(max, classname, colorname1, colorname2){
    //         var i = 1;
    //         var func1 = setInterval(function() {
    //           if( i < max ){
    //               color1( i, classname, colorname1, colorname2 );
    //               i++;
    //           } else{
    //             clearInterval(func1);
    //           }
    //         }, 55);
    //    };
    //    function color1( i, classname, colorname1, colorname2 ){
    //        $(classname).css({
    //             "background":"conic-gradient("+colorname1+" 0% ,"+ colorname2 + " " + (i / 2) + "%, " + colorname2 + " " + i + "%, transparent "+ i + "% 100%)"
    //        });
    //    };
    //    draw(bezier_color, '.carbon_chart', '#7bcc40', '#198c7a');

    },

    // 탄소저감 area 총 감축량 카운트 시작
    numberCountUp2: function() {
        var memberCountConTxt2= 6405232;    // 갱신된 변수값 저장

        $({ val : 6405200 }).animate({ val : memberCountConTxt2 }, {    // 이전 데이터값 변수 저장 (val값에)
            duration: 10000,
            step: function() {
                var num = numberWithCommas(Math.floor(this.val));
                $(".mov_num2").text(num);
            },
            complete: function() {
                var num = numberWithCommas(Math.floor(this.val));
                $(".mov_num2").text(num);
            }
        });

        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
        

    },
    
    main_startEvent: function() {
        let isVisible = false;
        
        // 화면에 카운트 div가 보이면 카운트 시작.
        window.addEventListener('scroll', function() {
            if (checkVisible($('.count_trigger')) && !isVisible) {
                mainEvent.numberCountUp2();
                mainEvent.numberCountUp1();
                isVisible=true;
            } 
    
            var carbonStop = $('.section1').offset().top -  $('.header').outerHeight();
            var carPos = $('.tit_area').height() + $('.header').outerHeight() + Number(-20);  
            if($(this).scrollTop() > carbonStop){
                $('.count2').addClass('on').css({'top':carPos});
            }else {
                $('.count2').removeClass('on').css({'top':'35%'});
            }    

        });
    
        function checkVisible( elm, eval ) {
            eval = eval || "object visible";
            var viewportHeight = $(window).height(), // Viewport Height
                scrolltop = $(window).scrollTop(), // Scroll Top
                y = $(elm).offset().top,
                elementHeight = $(elm).height();
    
            if (eval == "object visible") return ((y < (viewportHeight + scrolltop)) && (y > (scrolltop - elementHeight)));
            if (eval == "above") return ((y < (viewportHeight + scrolltop)));
        }

    },

    treeEvent: function() {
        $(".tree img").hover(function() {
            $(this).attr("src", $(this).data("animated"))
        }, function() {
            $(this).attr("src", $(this).data("static"))
        })

        //스크롤 중 대상($videos)이 화면 중간에 위치하면 클래스 추가 또는 이벤트(재생/일시정지) 실행 
        // $(window).on('scroll',scrollFn); 
        
        // // Scroll Event 
        // $.fn.scrollGet = function(){ 
        //     var offset = $(window).scrollTop() + $(window).height() - 200, 
        //     $svgLine = $('.tree_counts li'); 

        //     $svgLine.each(function(i) { 
        //         var $line = $(this), 
        //         line = $line.find('.line');
        //         Count = $line.find('.count');
                

        //         if (($line.offset().top) < offset) { 
        //             if(!$line.hasClass('on')){ 
        //                 line.addClass('on');
        //                 Count.addClass('on');
                        
        //             } 
        //         }
        //     }); 
        // }; 
        // // Scroll Event Function 
        // function scrollFn(){ 
        //     $.fn.scrollGet();
            
        // };


    },
    treeCount: function () {   
        var list = new Array();
        $('.tree_counts .count .tc').each(function(index, item) { 
            var $this = $(this),
                countTo = $this.attr('data-count');

            $({ countNum: $this.text()}).animate({
                countNum: countTo
                },
                {
                duration: 3000, 
                easing:'linear',
                step: function() {
                    var num = numberWithCommas(Math.floor(this.countNum));
                    $this.text(num);
                },
                complete: function() { 
                    var num = numberWithCommas(Math.floor(this.countNum));
                    $this.text(num);
                }
            
            });       
            
            list.push($(item).attr('data-count'));
            let sum = 0;
            for (let i = 0; i < list.length; i++) {
                sum += (Math.floor(list[i]));
            }
            //console.log(sum);

            // 총 감축량(합계)
            var treeChartSum = sum; 
            $({ val : 0 }).animate({ val : treeChartSum }, { duration: 5000,
                step: function() { var num = numberWithCommas(Math.floor(this.val)); $(".tree_counts li:eq(5) .count span").text(num); },
                complete: function() { var num = numberWithCommas(Math.floor(this.val)); $(".tree_counts li:eq(5) .count span").text(num); }
            });  
        });    

        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }  

        // 화면에 카운트 div가 보이면 카운트 시작.
        window.addEventListener('scroll', function() {
            if (checkVisible($('.count3 .tree')) && !isVisible) {
                this.treeCount();
                isVisible=true;
            } 
        

        });

    },



    parallax: function() {
        // makes the parallax elements
        function parallaxIt() {
            // create variables
            var $fwindow = $(window);
            var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
            var par_on = $('.section2').offset().top;
            var $transform = [];
            var $transform_rev = [];
        
            $('[data-type="parallax"]').each(function(index, e) {
                var $transformObj = $(this);
                $transformObj.__speed = ($transformObj.data('speed') || 1);
                $transformObj.__fgOffset = $transformObj.offset().top;
                $transform.push($transformObj);
            });

            $('[data-type="parallax_reverse"]').each(function() {
                var $transform_revObj = $(this);
                $transform_revObj.__speed = ($transform_revObj.data('speed') || 1);
                $transform_revObj.__fgOffset = $transform_revObj.offset().top;
                $transform_rev.push($transform_revObj);
            });
        
            // update positions
            $fwindow.on('scroll resize', function() {
                scrollTop = window.pageYOffset || document.documentElement.scrollTop;

                $transform.forEach(function($transformObj) {  
                    var yPos = ((scrollTop - $transformObj.__fgOffset) / $transformObj.__speed) + 30;

                    if ($('.section2').length) {
                        if (scrollTop >= par_on) {
                            $transformObj.css({"transform": "translate(0," + yPos + "px)"});
                        } else {
                            $transformObj.css({"transform": "translate(0, 0)"});
                        }
                    }
                }) 

                $transform_rev.forEach(function($transform_revObj) {
                    var yPos = -((scrollTop - $transform_revObj.__fgOffset) / $transform_revObj.__speed) - 40;
                    
                    if ($('.section2').length) {
                        if (scrollTop >= par_on) {
                            $transform_revObj.css({"transform": "translate(0," + yPos + "px)"});
                        } else {
                            $transform_revObj.css({"transform": "translate(0, 0)"});
                        }
                    }
                });
            });

            // triggers winodw scroll for refresh
            $fwindow.trigger('scroll');
        };
        // parallaxIt();
        if($(window).width()>768){
            parallaxIt();
        }else {

        }
    },
    
};


