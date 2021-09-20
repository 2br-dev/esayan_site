/*!
	jQuery ColorBox v1.4.6 - 2013-03-19
	(c) 2013 Jack Moore - jacklmoore.com/colorbox
	license: http://www.opensource.org/licenses/mit-license.php
*/
(function(e,t,n){function Y(n,r,i){var o=t.createElement(n);if(r){o.id=s+r}if(i){o.style.cssText=i}return e(o)}function Z(){return n.innerHeight?n.innerHeight:e(n).height()}function et(e){var t=E.length,n=(q+e)%t;return n<0?t+n:n}function tt(e,t){return Math.round((/%/.test(e)?(t==="x"?S.width():Z())/100:1)*parseInt(e,10))}function nt(e,t){return e.photo||e.photoRegex.test(t)}function rt(e,t){return e.retinaUrl&&n.devicePixelRatio>1?t.replace(e.photoRegex,e.retinaSuffix):t}function it(e){if("contains"in d[0]&&!d[0].contains(e.target)){e.stopPropagation();d.focus()}}function st(){var t,n=e.data(I,i);if(n==null){P=e.extend({},r);if(console&&console.log){console.log("Error: cboxElement missing settings object")}}else{P=e.extend({},n)}for(t in P){if(e.isFunction(P[t])&&t.slice(0,2)!=="on"){P[t]=P[t].call(I)}}P.rel=P.rel||I.rel||e(I).data("rel")||"nofollow";P.href=P.href||e(I).attr("href");P.title=P.title||I.title;if(typeof P.href==="string"){P.href=e.trim(P.href)}}function ot(n,r){e(t).trigger(n);D.trigger(n);if(e.isFunction(r)){r.call(I)}}function ut(){var e,t=s+"Slideshow_",n="click."+s,r,i,o,u;if(P.slideshow&&E[1]){r=function(){clearTimeout(e)};i=function(){if(P.loop||E[q+1]){e=setTimeout(V.next,P.slideshowSpeed)}};o=function(){L.html(P.slideshowStop).unbind(n).one(n,u);D.bind(f,i).bind(a,r).bind(l,u);d.removeClass(t+"off").addClass(t+"on")};u=function(){r();D.unbind(f,i).unbind(a,r).unbind(l,u);L.html(P.slideshowStart).unbind(n).one(n,function(){V.next();o()});d.removeClass(t+"on").addClass(t+"off")};if(P.slideshowAuto){o()}else{u()}}else{d.removeClass(t+"off "+t+"on")}}function at(n){if(!W){I=n;st();E=e(I);q=0;if(P.rel!=="nofollow"){E=e("."+o).filter(function(){var t=e.data(this,i),n;if(t){n=e(this).data("rel")||t.rel||this.rel}return n===P.rel});q=E.index(I);if(q===-1){E=E.add(I);q=E.length-1}}p.css({opacity:parseFloat(P.opacity),cursor:P.overlayClose?"pointer":"auto",visibility:"visible"}).show();if(J){d.add(p).removeClass(J)}if(P.className){d.add(p).addClass(P.className)}J=P.className;if(P.closeButton){M.html(P.close).appendTo(m)}else{M.appendTo("<div/>")}if(!U){U=z=true;d.css({visibility:"hidden",display:"block"});x=Y($,"LoadedContent","width:0; height:0; overflow:hidden");m.css({width:"",height:""}).append(x);H=g.height()+w.height()+m.outerHeight(true)-m.height();B=y.width()+b.width()+m.outerWidth(true)-m.width();j=x.outerHeight(true);F=x.outerWidth(true);P.w=tt(P.initialWidth,"x");P.h=tt(P.initialHeight,"y");V.position();ut();ot(u,P.onOpen);_.add(C).hide();d.focus();if(P.trapFocus){if(t.addEventListener){t.addEventListener("focus",it,true);D.one(c,function(){t.removeEventListener("focus",it,true)})}}if(P.returnFocus){D.one(c,function(){e(I).focus()})}}ct()}}function ft(){if(!d&&t.body){G=false;S=e(n);d=Y($).attr({id:i,"class":e.support.opacity===false?s+"IE":"",role:"dialog",tabindex:"-1"}).hide();p=Y($,"Overlay").hide();N=e([Y($,"LoadingOverlay")[0],Y($,"LoadingGraphic")[0]]);v=Y($,"Wrapper");m=Y($,"Content").append(C=Y($,"Title"),k=Y($,"Current"),O=e('<button type="button"/>').attr({id:s+"Previous"}),A=e('<button type="button"/>').attr({id:s+"Next"}),L=Y("button","Slideshow"),N);M=e('<button type="button"/>').attr({id:s+"Close"});v.append(Y($).append(Y($,"TopLeft"),g=Y($,"TopCenter"),Y($,"TopRight")),Y($,false,"clear:left").append(y=Y($,"MiddleLeft"),m,b=Y($,"MiddleRight")),Y($,false,"clear:left").append(Y($,"BottomLeft"),w=Y($,"BottomCenter"),Y($,"BottomRight"))).find("div div").css({"float":"left"});T=Y($,false,"position:absolute; width:9999px; visibility:hidden; display:none");_=A.add(O).add(k).add(L);e(t.body).append(p,d.append(v,T))}}function lt(){function n(t){if(!(t.which>1||t.shiftKey||t.altKey||t.metaKey||t.ctrlKey||e("body").data("currentMedia")=="mobile")){t.preventDefault();at(this)}}if(d){if(!G){G=true;A.click(function(){V.next()});O.click(function(){V.prev()});M.click(function(){V.close()});p.click(function(){if(P.overlayClose){V.close()}});e(t).bind("keydown."+s,function(e){var t=e.keyCode;if(U&&P.escKey&&t===27){e.preventDefault();V.close()}if(U&&P.arrowKey&&E[1]&&!e.altKey){if(t===37){e.preventDefault();O.click()}else if(t===39){e.preventDefault();A.click()}}});if(e.isFunction(e.fn.on)){e(t).on("click."+s,"."+o,n)}else{e("."+o).on("click."+s,n)}}return true}return false}function ct(){var r,i,o=V.prep,u,f=++K;z=true;R=false;I=E[q];st();ot(h);ot(a,P.onLoad);P.h=P.height?tt(P.height,"y")-j-H:P.innerHeight&&tt(P.innerHeight,"y");P.w=P.width?tt(P.width,"x")-F-B:P.innerWidth&&tt(P.innerWidth,"x");P.mw=P.w;P.mh=P.h;if(P.maxWidth){P.mw=tt(P.maxWidth,"x")-F-B;P.mw=P.w&&P.w<P.mw?P.w:P.mw}if(P.maxHeight){P.mh=tt(P.maxHeight,"y")-j-H;P.mh=P.h&&P.h<P.mh?P.h:P.mh}r=P.href;X=setTimeout(function(){N.show()},100);if(P.inline){u=Y($).hide().insertBefore(e(r)[0]);D.one(h,function(){u.replaceWith(x.children())});o(e(r))}else if(P.iframe){o(" ")}else if(P.html){o(P.html)}else if(nt(P,r)){r=rt(P,r);R=t.createElement("img");e(R).addClass(s+"Photo").bind("error",function(){P.title=false;o(Y($,"Error").html(P.imgError))}).one("load",function(){var t;if(f!==K){return}R.alt=e(I).attr("alt")||e(I).attr("data-alt")||"";if(P.retinaImage&&n.devicePixelRatio>1){R.height=R.height/n.devicePixelRatio;R.width=R.width/n.devicePixelRatio}if(P.scalePhotos){i=function(){R.height-=R.height*t;R.width-=R.width*t};if(P.mw&&R.width>P.mw){t=(R.width-P.mw)/R.width;i()}if(P.mh&&R.height>P.mh){t=(R.height-P.mh)/R.height;i()}}if(P.h){R.style.marginTop=Math.max(P.mh-R.height,0)/2+"px"}if(E[1]&&(P.loop||E[q+1])){R.style.cursor="pointer";R.onclick=function(){V.next()}}R.style.width=R.width+"px";R.style.height=R.height+"px";setTimeout(function(){o(R)},1)});setTimeout(function(){R.src=r},1)}else if(r){T.load(r,P.data,function(t,n){if(f===K){o(n==="error"?Y($,"Error").html(P.xhrError):e(this).contents())}})}}var r={transition:"elastic",speed:300,fadeOut:300,width:false,initialWidth:"600",innerWidth:false,maxWidth:false,height:false,initialHeight:"450",innerHeight:false,maxHeight:false,scalePhotos:true,scrolling:true,inline:false,html:false,iframe:false,fastIframe:true,photo:false,href:false,title:false,rel:false,opacity:.9,preloading:true,className:false,retinaImage:false,retinaUrl:false,retinaSuffix:"@2x.$1",current:"image {current} of {total}",previous:"previous",next:"next",close:"close",xhrError:"This content failed to load.",imgError:"This image failed to load.",open:false,returnFocus:true,trapFocus:true,reposition:true,loop:true,slideshow:false,slideshowAuto:true,slideshowSpeed:2500,slideshowStart:"start slideshow",slideshowStop:"stop slideshow",photoRegex:/\.(gif|png|jp(e|g|eg)|bmp|ico|webp)((#|\?).*)?$/i,onOpen:false,onLoad:false,onComplete:false,onCleanup:false,onClosed:false,overlayClose:true,escKey:true,arrowKey:true,top:false,bottom:false,left:false,right:false,fixed:false,data:undefined,closeButton:true},i="colorbox",s="cbox",o=s+"Element",u=s+"_open",a=s+"_load",f=s+"_complete",l=s+"_cleanup",c=s+"_closed",h=s+"_purge",p,d,v,m,g,y,b,w,E,S,x,T,N,C,k,L,A,O,M,_,D=e("<a/>"),P,H,B,j,F,I,q,R,U,z,W,X,V,$="div",J,K=0,Q={},G;if(e.colorbox){return}e(ft);V=e.fn[i]=e[i]=function(t,n){var s=this;t=t||{};ft();if(lt()){if(e.isFunction(s)){s=e("<a/>");t.open=true}else if(!s[0]){return s}if(n){t.onComplete=n}s.each(function(){e.data(this,i,e.extend({},e.data(this,i)||r,t))}).addClass(o);if(e.isFunction(t.open)&&t.open.call(s)||t.open){at(s[0])}}return s};V.position=function(t,n){function l(){g[0].style.width=w[0].style.width=m[0].style.width=parseInt(d[0].style.width,10)-B+"px";m[0].style.height=y[0].style.height=b[0].style.height=parseInt(d[0].style.height,10)-H+"px"}var r,i=0,o=0,u=d.offset(),a,f;S.unbind("resize."+s);d.css({top:-9e4,left:-9e4});a=S.scrollTop();f=S.scrollLeft();if(P.fixed){u.top-=a;u.left-=f;d.css({position:"fixed"})}else{i=a;o=f;d.css({position:"absolute"})}if(P.right!==false){o+=Math.max(S.width()-P.w-F-B-tt(P.right,"x"),0)}else if(P.left!==false){o+=tt(P.left,"x")}else{o+=Math.round(Math.max(S.width()-P.w-F-B,0)/2)}if(P.bottom!==false){i+=Math.max(Z()-P.h-j-H-tt(P.bottom,"y"),0)}else if(P.top!==false){i+=tt(P.top,"y")}else{i+=Math.round(Math.max(Z()-P.h-j-H,0)/2)}d.css({top:u.top,left:u.left,visibility:"visible"});v[0].style.width=v[0].style.height="9999px";r={width:P.w+F+B,height:P.h+j+H,top:i,left:o};if(t){var c=0;e.each(r,function(e){if(r[e]!==Q[e]){c=t;return}});t=c}Q=r;if(!t){d.css(r)}d.dequeue().animate(r,{duration:t||0,complete:function(){l();z=false;v[0].style.width=P.w+F+B+"px";v[0].style.height=P.h+j+H+"px";if(P.reposition){setTimeout(function(){S.bind("resize."+s,V.position)},1)}if(n){n()}},step:l})};V.resize=function(e){var t;if(U){e=e||{};if(e.width){P.w=tt(e.width,"x")-F-B}if(e.innerWidth){P.w=tt(e.innerWidth,"x")}x.css({width:P.w});if(e.height){P.h=tt(e.height,"y")-j-H}if(e.innerHeight){P.h=tt(e.innerHeight,"y")}if(!e.innerHeight&&!e.height){t=x.scrollTop();x.css({height:"auto"});P.h=x.height()}x.css({height:P.h});if(t){x.scrollTop(t)}V.position(P.transition==="none"?0:P.speed)}};V.prep=function(n){function u(){P.w=P.w||x.width();P.w=P.mw&&P.mw<P.w?P.mw:P.w;return P.w}function a(){P.h=P.h||x.height();P.h=P.mh&&P.mh<P.h?P.mh:P.h;return P.h}if(!U){return}var r,o=P.transition==="none"?0:P.speed;x.empty().remove();x=Y($,"LoadedContent").append(n);x.hide().appendTo(T.show()).css({width:u(),overflow:P.scrolling?"auto":"hidden"}).css({height:a()}).prependTo(m);T.hide();e(R).css({"float":"none"});r=function(){function c(){if(e.support.opacity===false){d[0].style.removeAttribute("filter")}}var n=E.length,r,u="frameBorder",a="allowTransparency",l;if(!U){return}l=function(){clearTimeout(X);N.hide();ot(f,P.onComplete)};C.html(P.title).add(x).show();if(n>1){if(typeof P.current==="string"){k.html(P.current.replace("{current}",q+1).replace("{total}",n)).show()}A[P.loop||q<n-1?"show":"hide"]().html(P.next);O[P.loop||q?"show":"hide"]().html(P.previous);if(P.slideshow){L.show()}if(P.preloading){e.each([et(-1),et(1)],function(){var n,r,s=E[this],o=e.data(s,i);if(o&&o.href){n=o.href;if(e.isFunction(n)){n=n.call(s)}}else{n=e(s).attr("href")}if(n&&nt(o,n)){n=rt(o,n);r=t.createElement("img");r.src=n}})}}else{_.hide()}if(P.iframe){r=Y("iframe")[0];if(u in r){r[u]=0}if(a in r){r[a]="true"}if(!P.scrolling){r.scrolling="no"}e(r).attr({src:P.href,name:(new Date).getTime(),"class":s+"Iframe",allowFullScreen:true,webkitAllowFullScreen:true,mozallowfullscreen:true}).one("load",l).appendTo(x);D.one(h,function(){r.src="//about:blank"});if(P.fastIframe){e(r).trigger("load")}}else{l()}if(P.transition==="fade"){d.fadeTo(o,1,c)}else{c()}};if(P.transition==="fade"){d.fadeTo(o,0,function(){V.position(0,r)})}else{V.position(o,r)}};V.next=function(){if(!z&&E[1]&&(P.loop||E[q+1])){q=et(1);at(E[q])}};V.prev=function(){if(!z&&E[1]&&(P.loop||q)){q=et(-1);at(E[q])}};V.close=function(){if(U&&!W){W=true;U=false;ot(l,P.onCleanup);S.unbind("."+s);p.fadeTo(P.fadeOut||0,0);d.stop().fadeTo(P.fadeOut||0,0,function(){d.add(p).css({opacity:1,cursor:"auto"}).hide();ot(h);x.empty().remove();setTimeout(function(){W=false;ot(c,P.onClosed)},1)})}};V.remove=function(){if(!d){return}d.stop();e.colorbox.close();d.stop().remove();p.remove();W=false;d=null;e("."+o).removeData(i).removeClass(o);e(t).unbind("click."+s)};V.element=function(){return e(I)};V.settings=r})(jQuery,document,window)

jQuery.extend(jQuery.colorbox.settings, {
	current: lang.t("фото {current} из {total}"),
	previous: lang.t("предыдущее"),
	next: lang.t("следующее"),
	close: lang.t("закрыть"),
	xhrError: lang.t("Не удалось загрузить содержимое."),
	imgError: lang.t("Не удалось загрузить изображение."),
        slideshowStart: lang.t("начать слайд-шоу"),
        slideshowStop: lang.t("остановить слайд-шоу")
});