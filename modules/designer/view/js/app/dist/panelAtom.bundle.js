(window.webpackJsonp=window.webpackJsonp||[]).push([[63],{375:function(t,e,a){"use strict";e.a={data:()=>({currentTab:"css",tabs:[{title:lang.t("Стили"),alias:"css"},{title:lang.t("Контент"),alias:"content"},{title:lang.t("Настройки"),alias:"settings"}]}),methods:{selectTab(t){this.currentTab=t},isActiveTab(t){return this.currentTab==t}}}},389:function(t,e,a){"use strict";a.r(e);var s=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"d-panel-atom"},[a("ul",{staticClass:"d-panel-atom-tablist"},t._l(t.tabs,(function(e,s){return a("li",{key:s,staticClass:"d-panel-atom-tabitem",class:{"d-active":t.isActiveTab(e.alias)}},[a("a",{on:{click:function(a){return a.preventDefault(),a.stopPropagation(),t.selectTab(e.alias)}}},[t._v(t._s(e.title))])])})),0),t._v(" "),a("div",{staticClass:"d-panel-atom-tabsections"},[a("div",{staticClass:"d-panel-atom-section"},[t.isNeedCSSTabShow()?a("div",{staticClass:"d-tab-content"},["css"==t.currentTab?a("CSSTab",{attrs:{"block-id":t.data.blockId,"item-type":t.data.type,"item-id":t.data.id}}):t._e()],1):t._e(),t._v(" "),"content"==t.currentTab?a("div",{staticClass:"d-tab-content"},[a("AttrsTab",{attrs:{"block-id":t.data.blockId,"item-type":t.data.type,"item-id":t.data.id}})],1):t._e(),t._v(" "),t.isCanDeleteAtom()&&"settings"==t.currentTab?a("div",{staticClass:"d-menu-css-preset-wrapper"},[a("div",{staticClass:"d-menu-css-preset d-open"},[a("div",{staticClass:"d-menu-css-preset-body"},[a("div",{staticClass:"d-menu-control-collection"},[a("div",{staticClass:"d-menu-control"},[a("div",{staticClass:"d-menu-control-title"},[t._v("\n                                    "+t._s(t.lang("Скрыть на разрешении"))+"\n                                ")]),t._v(" "),a("ControlHiddenSize",{attrs:{"block-id":t.data.blockId,"item-type":t.data.type,"item-id":t.data.id}})],1),t._v(" "),a("div",{staticClass:"d-menu-control"},[a("div",{staticClass:"d-menu-control-title"},[t._v("\n                                    "+t._s(t.lang("Дополнительный класс"))+"\n                                ")]),t._v(" "),a("ControlAdditionalClass",{attrs:{"block-id":t.data.blockId,"item-type":t.data.type,"item-id":t.data.id}})],1),t._v(" "),a("div",{staticClass:"d-menu-control"},[a("div",{staticClass:"d-menu-control-title"},[t._v("\n                                    "+t._s(t.lang("Название атома"))+"\n                                ")]),t._v(" "),a("div",{staticClass:"d-menu-control-body"},[a("input",{attrs:{type:"text"},domProps:{value:t.atomName},on:{input:t.sendAtomTitleFromValue}})])]),t._v(" "),a("div",{staticClass:"d-menu-control-collection"},[a("div",{staticClass:"d-menu-control"},[a("div",{staticClass:"d-menu-control-title"},[t._v("\n                                        "+t._s(t.lang("Сбросить атом"))+"\n                                    ")]),t._v(" "),a("ControlResetButton",{attrs:{"key-name":"attrs",type:"text","block-id":t.data.blockId,"item-type":t.data.type,"item-id":t.data.id,item:t.resetItem}})],1)])])])]),t._v(" "),a("br"),t._v(" "),t.isCanDeleteAtom()?a("a",{staticClass:"d-delete-item",on:{click:function(e){return e.preventDefault(),e.stopPropagation(),t.deleteAtomAndClose(e)}}},[t._v(t._s(t.lang("Удалить")))]):t._e()]):t._e()])])])};s._withStripped=!0;var n=a(7),i={data:()=>({settings_open:!1,tabs:[{title:lang.t("Стили"),alias:"css"},{title:lang.t("Контент"),alias:"content"},{title:lang.t("Настройки"),alias:"settings"}],resetItem:{type:"resetbutton",title:lang.t("Сбросить атом")}}),mounted(){this.isNeedCSSTabShow()||(this.tabs.shift(),this.currentTab="content"),this.isNeedContentTabShow()||Object.keys(this.tabs).forEach((t,e)=>{let a=this.tabs[t];a&&"content"==a.alias&&this.tabs.splice(e,1)});let t=this.atom.name;document.querySelector(".d-panel-title").innerHTML=t.length?t:lang.t("Без названия")},methods:{isNeedCSSTabShow(){let t=!1;return Object.keys(this.atom.css).forEach(e=>{t||1==this.atom.css[e].visible&&(t=!0)}),t},isNeedContentTabShow(){if(this.atom.attrs){let t=!1;return Object.keys(this.atom.attrs).forEach(e=>{let a=this.atom.attrs[e];"style"!=a.name&&"class"!=a.name&&a.visible&&(t=!0)}),t}return!1},isCanDeleteAtom(){return"MMenu"!=this.atom.atomType},deleteAtomAndClose(){let t=this.getColumnIdFromAtomId(this.data.id);this.deleteAtom({id:this.data.id,block_id:this.data.blockId}),this.changeColumnsWidthsIfNeeded(this.data.blockId,t),this.closeLastPanel()},toggleSettings(){this.settings_open=!this.settings_open},sendAtomTitleFromValue(t){let e=t.target.value;this.atom.name=e,document.querySelector(".d-panel-title").innerHTML=e.length?e:lang.t("Без названия"),this.setAtomData(this.atom)},...Object(n.b)(["closeLastPanel"]),...Object(n.b)("blocks",["setAtomData","deleteAtom"])},computed:{atom(){return this.getAtomData(this.data.blockId,this.data.id)},atomName(){return this.atom.name},...Object(n.c)("blocks",["getAtomData","getColumnIdFromAtomId"])}},o={mounted(){if("MMenu"==this.atom.atomType&&this.tabs.pop(),"Menu"==this.atom.atomType){let t=document.querySelector("#d-side-menu-right-menu-opener");t&&t.addEventListener(this.$clickevent,this.addEventOpenAtomMobileMenu),this.atom.attrs.show_mobile_button.value&&(document.querySelector("#d-side-menu-right-menu-opener").style.display="block")}},beforeDestroy(){if("Menu"==this.atom.atomType){let t=document.querySelector("#d-side-menu-right-menu-opener");t&&t.removeEventListener(this.$clickevent,this.addEventOpenAtomMobileMenu)}},methods:{addEventOpenAtomMobileMenu(t){this.openMobileMenu(),t.stopPropagation(),t.preventDefault()},sendReInitMMenuEvent(){let t=new CustomEvent("designer.init-mmenu");document.dispatchEvent(t)},openMobileMenu(){this.sendReInitMMenuEvent();let t=document.querySelector(".design-menu");t.style.transition="all .3s",t.style.left="inherit",t.style.right="0px",t.style.top="0px",t.style.height="100%",t.classList.add("d-atom-menu-toggler-right");let e=this.data.blockId+"-"+this.data.id,a=new Event(this.$clickevent);setTimeout(()=>{document.querySelector(`.designer-mmenu[data-id='${e}']`).dispatchEvent(a)},100),setTimeout(()=>{document.querySelector("#designer-mmenu-atom-open").dispatchEvent(a)},350)}}},l=a(101),d=a(99),c=a(375),r={props:{data:{type:Object,required:!0}},mixins:[l.a,d.a,c.a,i,o],components:{CSSTab:()=>a.e(5).then(a.bind(null,415)),AttrsTab:()=>a.e(3).then(a.bind(null,418)),ControlCollection:()=>a.e(8).then(a.bind(null,449)),ControlHiddenSize:()=>a.e(10).then(a.bind(null,419)),ControlAdditionalClass:()=>a.e(7).then(a.bind(null,416)),ControlResetButton:()=>a.e(11).then(a.bind(null,420))}},m=a(98),u=Object(m.a)(r,s,[],!1,null,null,null);u.options.__file="-readyscript/modules/designer/view/js/app/src/components/leftpanel/panels/panelatom/panelatom.vue";e.default=u.exports}}]);