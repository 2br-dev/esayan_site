(window.webpackJsonp=window.webpackJsonp||[]).push([[65],{403:function(t,e,s){"use strict";s.r(e);var a=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[t.getPresetCategories.length?s("div",{staticClass:"d-preset-categories"},t._l(t.getPresetCategories,(function(e,a){return s("a",{key:a,staticClass:"d-preset-category",on:{click:function(s){return s.preventDefault(),s.stopPropagation(),t.openCategory(e)}}},[s("span",{staticClass:"d-img"},[s("img",{attrs:{src:e.icon,alt:""}})]),t._v(" "),s("span",{staticClass:"d-name"},[t._v(t._s(e.title))])])})),0):t._e(),t._v(" "),s("div",{staticClass:"d-panel-instruments-title"},[t._v("\n        Перетащите нужный компонент в блок дизайнера\n    ")]),t._v(" "),t.getAtoms.length?s("draggable",{staticClass:"d-atom-list",attrs:{list:t.getAtoms,group:t.getGroupDragOptions(),draggable:".d-atom-drag",sort:!1,delay:200,delayOnTouchOnly:!0},on:{start:t.dragstart,end:t.dragend}},[t._l(t.getAtoms,(function(e,a){return["SubAtom"!=e.atomType&&"MMenu"!=e.atomType?s("div",{staticClass:"d-atom-drag"},[s("a",{staticClass:"d-atom-item",attrs:{title:t.lang("Перетащите этот компонент в блок дизайнера")}},[s("div",{staticClass:"d-img",style:{backgroundImage:"url("+e.image+")"}}),t._v(" "),s("div",{staticClass:"d-title"},[t._v(t._s(e.title))])])]):t._e()]}))],2):t._e()],1)};a._withStripped=!0;var n=s(148),r=s.n(n),o=s(7),i=s(1),l={mixins:[{computed:{getAtoms:()=>JSON.parse(JSON.stringify(i.b.getStructuresForAtoms())),...Object(o.c)("atoms",["getPresetCategories"]),...Object(o.c)("blocks",["getIsDraggingNow"])},methods:{openCategory(t){let e={type:"presets",category:t.title,data:{blockId:this.data.blockId,category:t}},s=new CustomEvent("designer.open-menu",{detail:e});document.querySelector("body").dispatchEvent(s)},getGroupDragOptions:()=>({name:"atoms",pull:"clone",put:!1}),dragstart(){this.setIsDraggingNow(!0),document.querySelector(".design-menu").classList.remove("d-open")},dragend(){this.setIsDraggingNow(!1),this.closeLastPanel(),document.removeEventListener("keypress",this.checkCancelDrag)},...Object(o.b)(["closeLastPanel"]),...Object(o.b)("blocks",["setIsDraggingNow"])}}],props:{data:{type:Object,required:!0}},components:{draggable:r.a}},g=s(98),c=Object(g.a)(l,a,[],!1,null,null,null);c.options.__file="-readyscript/modules/designer/view/js/app/src/components/leftpanel/panels/panelinstruments/panelinstruments.vue";e.default=c.exports}}]);