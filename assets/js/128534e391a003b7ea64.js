"use strict";(()=>{var b=Object.defineProperty;var j=Object.getOwnPropertySymbols;var Q=Object.prototype.hasOwnProperty,q=Object.prototype.propertyIsEnumerable;var B=(_,a,n)=>a in _?b(_,a,{enumerable:!0,configurable:!0,writable:!0,value:n}):_[a]=n,w=(_,a)=>{for(var n in a||(a={}))Q.call(a,n)&&B(_,n,a[n]);if(j)for(var n of j(a))q.call(a,n)&&B(_,n,a[n]);return _};var Y=typeof require!="undefined"?require:_=>{throw new Error('Dynamic require of "'+_+'" is not supported')};(self.webpackChunkmodern_prestashop_build_tool=self.webpackChunkmodern_prestashop_build_tool||[]).push([[109],{109:(_,a,n)=>{n.r(a),n.d(a,{default:()=>W});var D=n(311),s=n.n(D),d=n(980);const E="scrollspy",A="4.6.0",m="bs.scrollspy",S=`.${m}`,C=".data-api",I=s().fn[E],f={offset:10,method:"auto",target:""},N={offset:"number",method:"string",target:"(string|element)"},t=`activate${S}`,r=`scroll${S}`,i=`load${S}${C}`,u="dropdown-item",c="active",p='[data-spy="scroll"]',O=".nav, .list-group",R=".nav-link",H=".nav-item",L=".list-group-item",U=".dropdown",F=".dropdown-item",K=".dropdown-toggle",V="offset",M="position";class T{constructor(e,o){this._element=e,this._scrollElement=e.tagName==="BODY"?window:e,this._config=this._getConfig(o),this._selector=`${this._config.target} ${R},${this._config.target} ${L},${this._config.target} ${F}`,this._offsets=[],this._targets=[],this._activeTarget=null,this._scrollHeight=0,s()(this._scrollElement).on(r,l=>this._process(l)),this.refresh(),this._process()}static get VERSION(){return A}static get Default(){return f}refresh(){const e=this._scrollElement===this._scrollElement.window?V:M,o=this._config.method==="auto"?e:this._config.method,l=o===M?this._getScrollTop():0;this._offsets=[],this._targets=[],this._scrollHeight=this._getScrollHeight(),[].slice.call(document.querySelectorAll(this._selector)).map(g=>{let y;const v=d.Z.getSelectorFromElement(g);if(v&&(y=document.querySelector(v)),y){const $=y.getBoundingClientRect();if($.width||$.height)return[s()(y)[o]().top+l,v]}return null}).filter(g=>g).sort((g,y)=>g[0]-y[0]).forEach(g=>{this._offsets.push(g[0]),this._targets.push(g[1])})}dispose(){s().removeData(this._element,m),s()(this._scrollElement).off(S),this._element=null,this._scrollElement=null,this._config=null,this._selector=null,this._offsets=null,this._targets=null,this._activeTarget=null,this._scrollHeight=null}_getConfig(e){if(e=w(w({},f),typeof e=="object"&&e?e:{}),typeof e.target!="string"&&d.Z.isElement(e.target)){let o=s()(e.target).attr("id");o||(o=d.Z.getUID(E),s()(e.target).attr("id",o)),e.target=`#${o}`}return d.Z.typeCheckConfig(E,e,N),e}_getScrollTop(){return this._scrollElement===window?this._scrollElement.pageYOffset:this._scrollElement.scrollTop}_getScrollHeight(){return this._scrollElement.scrollHeight||Math.max(document.body.scrollHeight,document.documentElement.scrollHeight)}_getOffsetHeight(){return this._scrollElement===window?window.innerHeight:this._scrollElement.getBoundingClientRect().height}_process(){const e=this._getScrollTop()+this._config.offset,o=this._getScrollHeight(),l=this._config.offset+o-this._getOffsetHeight();if(this._scrollHeight!==o&&this.refresh(),e>=l){const h=this._targets[this._targets.length-1];this._activeTarget!==h&&this._activate(h);return}if(this._activeTarget&&e<this._offsets[0]&&this._offsets[0]>0){this._activeTarget=null,this._clear();return}for(let h=this._offsets.length;h--;)this._activeTarget!==this._targets[h]&&e>=this._offsets[h]&&(typeof this._offsets[h+1]=="undefined"||e<this._offsets[h+1])&&this._activate(this._targets[h])}_activate(e){this._activeTarget=e,this._clear();const o=this._selector.split(",").map(h=>`${h}[data-target="${e}"],${h}[href="${e}"]`),l=s()([].slice.call(document.querySelectorAll(o.join(","))));l.hasClass(u)?(l.closest(U).find(K).addClass(c),l.addClass(c)):(l.addClass(c),l.parents(O).prev(`${R}, ${L}`).addClass(c),l.parents(O).prev(H).children(R).addClass(c)),s()(this._scrollElement).trigger(t,{relatedTarget:e})}_clear(){[].slice.call(document.querySelectorAll(this._selector)).filter(e=>e.classList.contains(c)).forEach(e=>e.classList.remove(c))}static _jQueryInterface(e){return this.each(function(){let o=s()(this).data(m);const l=typeof e=="object"&&e;if(o||(o=new T(this,l),s()(this).data(m,o)),typeof e=="string"){if(typeof o[e]=="undefined")throw new TypeError(`No method named "${e}"`);o[e]()}})}}s()(window).on(i,()=>{const P=[].slice.call(document.querySelectorAll(p)),e=P.length;for(let o=e;o--;){const l=s()(P[o]);T._jQueryInterface.call(l,l.data())}}),s().fn[E]=T._jQueryInterface,s().fn[E].Constructor=T,s().fn[E].noConflict=()=>(s().fn[E]=I,T._jQueryInterface);const W=T},980:(_,a,n)=>{n.d(a,{Z:()=>N});var D=n(311),s=n.n(D);const d="transitionend",E=1e6,A=1e3;function m(t){return t===null||typeof t=="undefined"?`${t}`:{}.toString.call(t).match(/\s([a-z]+)/i)[1].toLowerCase()}function S(){return{bindType:d,delegateType:d,handle(t){if(s()(t.target).is(this))return t.handleObj.handler.apply(this,arguments)}}}function C(t){let r=!1;return s()(this).one(f.TRANSITION_END,()=>{r=!0}),setTimeout(()=>{r||f.triggerTransitionEnd(this)},t),this}function I(){s().fn.emulateTransitionEnd=C,s().event.special[f.TRANSITION_END]=S()}const f={TRANSITION_END:"bsTransitionEnd",getUID(t){do t+=~~(Math.random()*E);while(document.getElementById(t));return t},getSelectorFromElement(t){let r=t.getAttribute("data-target");if(!r||r==="#"){const i=t.getAttribute("href");r=i&&i!=="#"?i.trim():""}try{return document.querySelector(r)?r:null}catch(i){return null}},getTransitionDurationFromElement(t){if(!t)return 0;let r=s()(t).css("transition-duration"),i=s()(t).css("transition-delay");const u=parseFloat(r),c=parseFloat(i);return!u&&!c?0:(r=r.split(",")[0],i=i.split(",")[0],(parseFloat(r)+parseFloat(i))*A)},reflow(t){return t.offsetHeight},triggerTransitionEnd(t){s()(t).trigger(d)},supportsTransitionEnd(){return Boolean(d)},isElement(t){return(t[0]||t).nodeType},typeCheckConfig(t,r,i){for(const u in i)if(Object.prototype.hasOwnProperty.call(i,u)){const c=i[u],p=r[u],O=p&&f.isElement(p)?"element":m(p);if(!new RegExp(c).test(O))throw new Error(`${t.toUpperCase()}: Option "${u}" provided type "${O}" but expected type "${c}".`)}},findShadowRoot(t){if(!document.documentElement.attachShadow)return null;if(typeof t.getRootNode=="function"){const r=t.getRootNode();return r instanceof ShadowRoot?r:null}return t instanceof ShadowRoot?t:t.parentNode?f.findShadowRoot(t.parentNode):null},jQueryDetection(){if(typeof s()=="undefined")throw new TypeError("Bootstrap's JavaScript requires jQuery. jQuery must be included before Bootstrap's JavaScript.");const t=s().fn.jquery.split(" ")[0].split("."),r=1,i=2,u=9,c=1,p=4;if(t[0]<i&&t[1]<u||t[0]===r&&t[1]===u&&t[2]<c||t[0]>=p)throw new Error("Bootstrap's JavaScript requires at least jQuery v1.9.1 but less than v4.0.0")}};f.jQueryDetection(),I();const N=f}}]);})();
