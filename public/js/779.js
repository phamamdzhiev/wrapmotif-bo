(self.webpackChunk=self.webpackChunk||[]).push([[779],{779:(e,o,t)=>{"use strict";t.r(o),t.d(o,{default:()=>f});var n=t(5166),r=(0,n.withScopeId)("data-v-1f4ec9d0");(0,n.pushScopeId)("data-v-1f4ec9d0");var a=(0,n.createTextVNode)("How It Works"),s=(0,n.createTextVNode)("Change home page how it works section settings."),c={class:"col-span-6 sm:col-span-4"},i=(0,n.createVNode)("small",{class:"mt-1 font-thin text-gray-400"},"* Image should be minimum 1920x1080 px. Maximum file size: 10MB/10240KB.",-1),u=(0,n.createTextVNode)("Saved."),l=(0,n.createTextVNode)("Save");(0,n.popScopeId)();var d=r((function(e,o,t,d,m,f){var p=(0,n.resolveComponent)("jet-label"),h=(0,n.resolveComponent)("jet-image-input"),v=(0,n.resolveComponent)("jet-input-error"),g=(0,n.resolveComponent)("jet-action-message"),C=(0,n.resolveComponent)("jet-button"),N=(0,n.resolveComponent)("jet-form-section");return(0,n.openBlock)(),(0,n.createBlock)(N,{onSubmitted:f.save},{title:r((function(){return[a]})),description:r((function(){return[s]})),form:r((function(){var o;return[(0,n.createVNode)("div",c,[(0,n.createVNode)(p,{for:"images",value:"Images"}),(0,n.createVNode)(h,{url:null===(o=e.$page.props.howItWorks)||void 0===o?void 0:o.primaryMediaUrl,onChange:f.handleFileChange},null,8,["url","onChange"]),i,(0,n.createVNode)(v,{message:m.form.errors.image,class:"mt-2"},null,8,["message"])])]})),actions:r((function(){return[(0,n.createVNode)(g,{on:m.form.recentlySuccessful,class:"mr-3"},{default:r((function(){return[u]})),_:1},8,["on"]),(0,n.createVNode)(C,{class:{"opacity-25":m.form.processing},disabled:m.form.processing},{default:r((function(){return[l]})),_:1},8,["class","disabled"])]})),_:1},8,["onSubmitted"])}));const m={data:function(){return{form:this.$inertia.form({image:null})}},methods:{save:function(){var e=this;this.form.post(route("appearance.home.howItWorks"),{onSuccess:function(){return e.form.reset()}})},handleFileChange:function(e){this.form.image=e}},mounted:function(){}};m.render=d,m.__scopeId="data-v-1f4ec9d0";const f=m}}]);