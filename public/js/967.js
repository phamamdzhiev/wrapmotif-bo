(self.webpackChunk=self.webpackChunk||[]).push([[967],{967:(e,o,t)=>{"use strict";t.r(o),t.d(o,{default:()=>C});var a=t(5166),l=(0,a.withScopeId)("data-v-245dd8be");(0,a.pushScopeId)("data-v-245dd8be");var r=(0,a.createTextVNode)("Website Settings"),s=(0,a.createTextVNode)("Change your website settings from here."),n={class:"col-span-6 sm:col-span-4"},c={class:"col-span-6 sm:col-span-4"},i={class:"col-span-6 sm:col-span-4"},d=(0,a.createVNode)("small",{class:"mt-1 font-thin text-gray-400"},"* Logo should be minimum 500x188 px. Maximum file size: 5MB/5120KB.",-1),m={class:"col-span-6 sm:col-span-4"},u=(0,a.createVNode)("small",{class:"mt-1 font-thin text-gray-400"},"* Logo should be minimum 500x188 px. Maximum file size: 5MB/5120KB.",-1),p={class:"col-span-6 sm:col-span-4"},f={class:"col-span-6 sm:col-span-4"},v=(0,a.createVNode)("small",{class:"mt-1 font-thin text-gray-400"},"* Admin will get notified if any user sent through this email.",-1),V={class:"col-span-6 sm:col-span-4"},g={class:"col-span-6 sm:col-span-4"},N={class:"col-span-6 sm:col-span-4"},h={class:"col-span-6 sm:col-span-4"},y={class:"col-span-6 sm:col-span-4"},b=(0,a.createTextVNode)("Saved Successfully."),w=(0,a.createTextVNode)("Save");(0,a.popScopeId)();var x=l((function(e,o,t,x,k,C){var L=(0,a.resolveComponent)("jet-label"),$=(0,a.resolveComponent)("jet-input"),z=(0,a.resolveComponent)("jet-input-error"),S=(0,a.resolveComponent)("jet-text-input"),U=(0,a.resolveComponent)("jet-image-input"),j=(0,a.resolveComponent)("jet-action-message"),D=(0,a.resolveComponent)("jet-button"),B=(0,a.resolveComponent)("jet-form-section");return(0,a.openBlock)(),(0,a.createBlock)(B,{onSubmitted:C.save},{title:l((function(){return[r]})),description:l((function(){return[s]})),form:l((function(){var t,l;return[(0,a.createVNode)("div",n,[(0,a.createVNode)(L,{for:"name",value:"Name"}),(0,a.createVNode)($,{id:"name",type:"text",class:"mt-1 block w-full",modelValue:k.form.name,"onUpdate:modelValue":o[1]||(o[1]=function(e){return k.form.name=e}),ref:"name",autocomplete:"name"},null,8,["modelValue"]),(0,a.createVNode)(z,{message:k.form.errors.name,class:"mt-2"},null,8,["message"])]),(0,a.createVNode)("div",c,[(0,a.createVNode)(L,{for:"description",value:"Description"}),(0,a.createVNode)(S,{id:"description",type:"text",class:"mt-1 block w-full",modelValue:k.form.description,"onUpdate:modelValue":o[2]||(o[2]=function(e){return k.form.description=e}),ref:"description",autocomplete:"description"},null,8,["modelValue"]),(0,a.createVNode)(z,{message:k.form.errors.description,class:"mt-2"},null,8,["message"])]),(0,a.createVNode)("div",i,[(0,a.createVNode)(L,{for:"logoLight",value:"Logo Light"}),(0,a.createVNode)(U,{url:null===(t=e.$page.props.website)||void 0===t?void 0:t.primaryMediaUrl,onChange:C.handleLightLogoChange},null,8,["url","onChange"]),d,(0,a.createVNode)(z,{message:k.form.errors.logoLight,class:"mt-2"},null,8,["message"])]),(0,a.createVNode)("div",m,[(0,a.createVNode)(L,{for:"logoDark",value:"Logo Dark"}),(0,a.createVNode)(U,{url:null===(l=e.$page.props.website)||void 0===l?void 0:l.secondaryMediaUrl,onChange:C.handleDarkLogoChange},null,8,["url","onChange"]),u,(0,a.createVNode)(z,{message:k.form.errors.logoDark,class:"mt-2"},null,8,["message"])]),(0,a.createVNode)("div",p,[(0,a.createVNode)(L,{for:"phone",value:"Phone"}),(0,a.createVNode)($,{id:"phone",type:"text",class:"mt-1 block w-full",modelValue:k.form.phone,"onUpdate:modelValue":o[3]||(o[3]=function(e){return k.form.phone=e}),ref:"phone",autocomplete:"phone"},null,8,["modelValue"]),(0,a.createVNode)(z,{message:k.form.errors.phone,class:"mt-2"},null,8,["message"])]),(0,a.createVNode)("div",f,[(0,a.createVNode)(L,{for:"email",value:"Email"}),(0,a.createVNode)($,{id:"email",type:"text",class:"mt-1 block w-full",modelValue:k.form.email,"onUpdate:modelValue":o[4]||(o[4]=function(e){return k.form.email=e}),ref:"email",autocomplete:"email"},null,8,["modelValue"]),v,(0,a.createVNode)(z,{message:k.form.errors.email,class:"mt-2"},null,8,["message"])]),(0,a.createVNode)("div",V,[(0,a.createVNode)(L,{for:"street",value:"Street Address"}),(0,a.createVNode)($,{id:"street",type:"text",class:"mt-1 block w-full",modelValue:k.form.street,"onUpdate:modelValue":o[5]||(o[5]=function(e){return k.form.street=e}),ref:"street",autocomplete:"street"},null,8,["modelValue"]),(0,a.createVNode)(z,{message:k.form.errors.street,class:"mt-2"},null,8,["message"])]),(0,a.createVNode)("div",g,[(0,a.createVNode)(L,{for:"city",value:"City"}),(0,a.createVNode)($,{id:"city",type:"text",class:"mt-1 block w-full",modelValue:k.form.city,"onUpdate:modelValue":o[6]||(o[6]=function(e){return k.form.city=e}),ref:"city",autocomplete:"city"},null,8,["modelValue"]),(0,a.createVNode)(z,{message:k.form.errors.city,class:"mt-2"},null,8,["message"])]),(0,a.createVNode)("div",N,[(0,a.createVNode)(L,{for:"zip",value:"Zip Code"}),(0,a.createVNode)($,{id:"zip",type:"text",class:"mt-1 block w-full",modelValue:k.form.zip,"onUpdate:modelValue":o[7]||(o[7]=function(e){return k.form.zip=e}),ref:"zip",autocomplete:"zip"},null,8,["modelValue"]),(0,a.createVNode)(z,{message:k.form.errors.zip,class:"mt-2"},null,8,["message"])]),(0,a.createVNode)("div",h,[(0,a.createVNode)(L,{for:"country",value:"Country"}),(0,a.createVNode)($,{id:"country",type:"text",class:"mt-1 block w-full",modelValue:k.form.country,"onUpdate:modelValue":o[8]||(o[8]=function(e){return k.form.country=e}),ref:"country",autocomplete:"country"},null,8,["modelValue"]),(0,a.createVNode)(z,{message:k.form.errors.country,class:"mt-2"},null,8,["message"])]),(0,a.createVNode)("div",y,[(0,a.createVNode)(L,{for:"vatNo",value:"Vat No"}),(0,a.createVNode)($,{id:"vatNo",type:"text",class:"mt-1 block w-full",modelValue:k.form.vatNo,"onUpdate:modelValue":o[9]||(o[9]=function(e){return k.form.vatNo=e}),ref:"vatNo",autocomplete:"vatNo"},null,8,["modelValue"]),(0,a.createVNode)(z,{message:k.form.errors.vatNo,class:"mt-2"},null,8,["message"])])]})),actions:l((function(){return[(0,a.createVNode)(j,{on:k.form.recentlySuccessful,class:"mr-3"},{default:l((function(){return[b]})),_:1},8,["on"]),(0,a.createVNode)(D,{class:{"opacity-25":k.form.processing},disabled:k.form.processing},{default:l((function(){return[w]})),_:1},8,["class","disabled"])]})),_:1},8,["onSubmitted"])}));const k={data:function(){var e,o,t,a,l,r,s,n,c,i,d,m,u,p,f,v,V,g;return{form:this.$inertia.form({name:null===(e=this.$page.props.website)||void 0===e||null===(o=e.data)||void 0===o?void 0:o.name,description:null===(t=this.$page.props.website)||void 0===t||null===(a=t.data)||void 0===a?void 0:a.description,logoLight:null,logoDark:null,phone:null===(l=this.$page.props.website)||void 0===l||null===(r=l.data)||void 0===r?void 0:r.phone,email:null===(s=this.$page.props.website)||void 0===s||null===(n=s.data)||void 0===n?void 0:n.email,street:null===(c=this.$page.props.website)||void 0===c||null===(i=c.data)||void 0===i?void 0:i.street,city:null===(d=this.$page.props.website)||void 0===d||null===(m=d.data)||void 0===m?void 0:m.city,zip:null===(u=this.$page.props.website)||void 0===u||null===(p=u.data)||void 0===p?void 0:p.zip,country:null===(f=this.$page.props.website)||void 0===f||null===(v=f.data)||void 0===v?void 0:v.country,vatNo:null===(V=this.$page.props.website)||void 0===V||null===(g=V.data)||void 0===g?void 0:g.vatNo})}},methods:{save:function(){this.form.post(route("settings.website"))},handleLightLogoChange:function(e){this.form.logoLight=e},handleDarkLogoChange:function(e){this.form.logoDark=e}},mounted:function(){}};k.render=x,k.__scopeId="data-v-245dd8be";const C=k}}]);