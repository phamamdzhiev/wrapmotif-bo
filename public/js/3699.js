(self.webpackChunk=self.webpackChunk||[]).push([[3699],{3699:(e,o,t)=>{"use strict";t.r(o),t.d(o,{default:()=>f});var r=t(5166),n=(0,r.withScopeId)("data-v-2249f97c");(0,r.pushScopeId)("data-v-2249f97c");var a=(0,r.createTextVNode)("New Vat Settings"),s={class:"mb-4"},l={class:"mb-4"},u={class:"col-span-6 sm:col-span-4"},c=(0,r.createTextVNode)("Cancel"),m=(0,r.createTextVNode)("Save");(0,r.popScopeId)();var d=n((function(e,o,t,d,p,f){var i=(0,r.resolveComponent)("jet-label"),v=(0,r.resolveComponent)("jet-select"),V=(0,r.resolveComponent)("jet-input-error"),N=(0,r.resolveComponent)("jet-input"),y=(0,r.resolveComponent)("inertia-link"),b=(0,r.resolveComponent)("jet-button"),h=(0,r.resolveComponent)("form-view");return(0,r.openBlock)(),(0,r.createBlock)(h,{onSubmitted:f.save},{title:n((function(){return[a]})),form:n((function(){return[(0,r.createVNode)("div",s,[(0,r.createVNode)(i,{for:"name",value:"Country"}),(0,r.createVNode)(v,{modelValue:p.form.countryId,"onUpdate:modelValue":o[1]||(o[1]=function(e){return p.form.countryId=e}),options:t.countries},null,8,["modelValue","options"]),(0,r.createVNode)(V,{message:p.form.errors.countryId,class:"mt-2"},null,8,["message"])]),(0,r.createVNode)("div",l,[(0,r.createVNode)(i,{for:"amount",value:"Amount"}),(0,r.createVNode)(N,{id:"amount",type:"text",class:"mt-1 block w-full",modelValue:p.form.amount,"onUpdate:modelValue":o[2]||(o[2]=function(e){return p.form.amount=e}),ref:"amount",autocomplete:"amount"},null,8,["modelValue"]),(0,r.createVNode)(V,{message:p.form.errors.amount,class:"mt-2"},null,8,["message"])]),(0,r.createVNode)("div",u,[(0,r.createVNode)(i,{for:"type",value:"Vat Type"}),(0,r.createVNode)(v,{track:"value",showPlaceholder:!1,options:e.$page.props.vatTypes,modelValue:p.form.type,"onUpdate:modelValue":o[3]||(o[3]=function(e){return p.form.type=e}),autocomplete:"off"},null,8,["options","modelValue"]),(0,r.createVNode)(V,{message:p.form.errors.type,class:"mt-2"},null,8,["message"])])]})),actions:n((function(){return[(0,r.createVNode)(y,{href:e.route("vats.index"),class:"btn btn-secondary mr-4"},{default:n((function(){return[c]})),_:1},8,["href"]),(0,r.createVNode)(b,{class:{"opacity-25":p.form.processing},disabled:p.form.processing},{default:n((function(){return[m]})),_:1},8,["class","disabled"])]})),_:1},8,["onSubmitted"])}));const p={name:"vats-create",props:{countries:Object},data:function(){return{form:this.$inertia.form({amount:null,type:"%",countryId:null})}},methods:{save:function(){this.form.post(route("vats.store"))}}};p.render=d,p.__scopeId="data-v-2249f97c";const f=p}}]);