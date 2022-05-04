(self.webpackChunk=self.webpackChunk||[]).push([[9430],{7637:(e,t,o)=>{"use strict";o.d(t,{Z:()=>i});var n=o(5166),r={class:"md:grid md:grid-cols-3 md:gap-6"},a={class:"mt-5 md:mt-0 md:col-span-2"},c={class:"px-4 py-5 sm:p-6 bg-white shadow sm:rounded-lg"};const s={components:{JetSectionTitle:o(3929).Z},render:function(e,t,o,s,i,d){var l=(0,n.resolveComponent)("jet-section-title");return(0,n.openBlock)(),(0,n.createBlock)("div",r,[(0,n.createVNode)(l,null,{title:(0,n.withCtx)((function(){return[(0,n.renderSlot)(e.$slots,"title")]})),description:(0,n.withCtx)((function(){return[(0,n.renderSlot)(e.$slots,"description")]})),_:1}),(0,n.createVNode)("div",a,[(0,n.createVNode)("div",c,[(0,n.renderSlot)(e.$slots,"content")])])])}},i=s},9430:(e,t,o)=>{"use strict";o.r(t),o.d(t,{default:()=>J});var n=o(5166),r=(0,n.createTextVNode)(" Two Factor Authentication "),a=(0,n.createTextVNode)(" Add additional security to your account using two factor authentication. "),c={key:0,class:"text-lg font-medium text-gray-900"},s={key:1,class:"text-lg font-medium text-gray-900"},i=(0,n.createVNode)("div",{class:"mt-3 max-w-xl text-sm text-gray-600"},[(0,n.createVNode)("p",null," When two factor authentication is enabled, you will be prompted for a secure, random token during authentication. You may retrieve this token from your phone's Google Authenticator application. ")],-1),d={key:2},l={key:0},u=(0,n.createVNode)("div",{class:"mt-4 max-w-xl text-sm text-gray-600"},[(0,n.createVNode)("p",{class:"font-semibold"}," Two factor authentication is now enabled. Scan the following QR code using your phone's authenticator application. ")],-1),f={key:1},m=(0,n.createVNode)("div",{class:"mt-4 max-w-xl text-sm text-gray-600"},[(0,n.createVNode)("p",{class:"font-semibold"}," Store these recovery codes in a secure password manager. They can be used to recover access to your account if your two factor authentication device is lost. ")],-1),p={class:"grid gap-1 max-w-xl mt-4 px-4 py-4 font-mono text-sm bg-gray-100 rounded-lg"},h={class:"mt-5"},w={key:0},C=(0,n.createTextVNode)(" Enable "),g={key:1},v=(0,n.createTextVNode)(" Regenerate Recovery Codes "),y=(0,n.createTextVNode)(" Show Recovery Codes "),x=(0,n.createTextVNode)(" Disable ");var k=o(7637),b=o(5130),V={class:"mt-4"},N=(0,n.createTextVNode)(" Cancel ");var B=o(8415),T=o(7676),S=o(8985),_=o(4940);const P={emits:["confirmed"],props:{title:{default:"Confirm Password"},content:{default:"For your security, please confirm your password to continue."},button:{default:"Confirm"}},components:{JetButton:b.Z,JetDialogModal:B.Z,JetInput:T.Z,JetInputError:S.Z,JetSecondaryButton:_.Z},data:function(){return{confirmingPassword:!1,form:{password:"",error:""}}},methods:{startConfirmingPassword:function(){var e=this;axios.get(route("password.confirmation")).then((function(t){t.data.confirmed?e.$emit("confirmed"):(e.confirmingPassword=!0,setTimeout((function(){return e.$refs.password.focus()}),250))}))},confirmPassword:function(){var e=this;this.form.processing=!0,axios.post(route("password.confirm"),{password:this.form.password}).then((function(){e.form.processing=!1,e.closeModal(),e.$nextTick((function(){return e.$emit("confirmed")}))})).catch((function(t){e.form.processing=!1,e.form.error=t.response.data.errors.password[0],e.$refs.password.focus()}))},closeModal:function(){this.confirmingPassword=!1,this.form.password="",this.form.error=""}},render:function(e,t,o,r,a,c){var s=(0,n.resolveComponent)("jet-input"),i=(0,n.resolveComponent)("jet-input-error"),d=(0,n.resolveComponent)("jet-secondary-button"),l=(0,n.resolveComponent)("jet-button"),u=(0,n.resolveComponent)("jet-dialog-modal");return(0,n.openBlock)(),(0,n.createBlock)("span",null,[(0,n.createVNode)("span",{onClick:t[1]||(t[1]=function(){return c.startConfirmingPassword&&c.startConfirmingPassword.apply(c,arguments)})},[(0,n.renderSlot)(e.$slots,"default")]),(0,n.createVNode)(u,{show:a.confirmingPassword,onClose:c.closeModal},{title:(0,n.withCtx)((function(){return[(0,n.createTextVNode)((0,n.toDisplayString)(o.title),1)]})),content:(0,n.withCtx)((function(){return[(0,n.createTextVNode)((0,n.toDisplayString)(o.content)+" ",1),(0,n.createVNode)("div",V,[(0,n.createVNode)(s,{type:"password",class:"mt-1 block w-3/4",placeholder:"Password",ref:"password",modelValue:a.form.password,"onUpdate:modelValue":t[2]||(t[2]=function(e){return a.form.password=e}),onKeyup:(0,n.withKeys)(c.confirmPassword,["enter"])},null,8,["modelValue","onKeyup"]),(0,n.createVNode)(i,{message:a.form.error,class:"mt-2"},null,8,["message"])])]})),footer:(0,n.withCtx)((function(){return[(0,n.createVNode)(d,{onClick:c.closeModal},{default:(0,n.withCtx)((function(){return[N]})),_:1},8,["onClick"]),(0,n.createVNode)(l,{class:["ml-2",{"opacity-25":a.form.processing}],onClick:c.confirmPassword,disabled:a.form.processing},{default:(0,n.withCtx)((function(){return[(0,n.createTextVNode)((0,n.toDisplayString)(o.button),1)]})),_:1},8,["onClick","class","disabled"])]})),_:1},8,["show","onClose"])])}},F=P;var $=o(6985);const j={components:{JetActionSection:k.Z,JetButton:b.Z,JetConfirmsPassword:F,JetDangerButton:$.Z,JetSecondaryButton:_.Z},data:function(){return{enabling:!1,disabling:!1,qrCode:null,recoveryCodes:[]}},methods:{enableTwoFactorAuthentication:function(){var e=this;this.enabling=!0,this.$inertia.post("/user/two-factor-authentication",{},{preserveScroll:!0,onSuccess:function(){return Promise.all([e.showQrCode(),e.showRecoveryCodes()])},onFinish:function(){return e.enabling=!1}})},showQrCode:function(){var e=this;return axios.get("/user/two-factor-qr-code").then((function(t){e.qrCode=t.data.svg}))},showRecoveryCodes:function(){var e=this;return axios.get("/user/two-factor-recovery-codes").then((function(t){e.recoveryCodes=t.data}))},regenerateRecoveryCodes:function(){var e=this;axios.post("/user/two-factor-recovery-codes").then((function(t){e.showRecoveryCodes()}))},disableTwoFactorAuthentication:function(){var e=this;this.disabling=!0,this.$inertia.delete("/user/two-factor-authentication",{preserveScroll:!0,onSuccess:function(){return e.disabling=!1}})}},computed:{twoFactorEnabled:function(){return!this.enabling&&this.$page.props.user.two_factor_enabled}},render:function(e,t,o,k,b,V){var N=(0,n.resolveComponent)("jet-button"),B=(0,n.resolveComponent)("jet-confirms-password"),T=(0,n.resolveComponent)("jet-secondary-button"),S=(0,n.resolveComponent)("jet-danger-button"),_=(0,n.resolveComponent)("jet-action-section");return(0,n.openBlock)(),(0,n.createBlock)(_,null,{title:(0,n.withCtx)((function(){return[r]})),description:(0,n.withCtx)((function(){return[a]})),content:(0,n.withCtx)((function(){return[V.twoFactorEnabled?((0,n.openBlock)(),(0,n.createBlock)("h3",c," You have enabled two factor authentication. ")):((0,n.openBlock)(),(0,n.createBlock)("h3",s," You have not enabled two factor authentication. ")),i,V.twoFactorEnabled?((0,n.openBlock)(),(0,n.createBlock)("div",d,[b.qrCode?((0,n.openBlock)(),(0,n.createBlock)("div",l,[u,(0,n.createVNode)("div",{class:"mt-4 dark:p-4 dark:w-56 dark:bg-white",innerHTML:b.qrCode},null,8,["innerHTML"])])):(0,n.createCommentVNode)("",!0),b.recoveryCodes.length>0?((0,n.openBlock)(),(0,n.createBlock)("div",f,[m,(0,n.createVNode)("div",p,[((0,n.openBlock)(!0),(0,n.createBlock)(n.Fragment,null,(0,n.renderList)(b.recoveryCodes,(function(e){return(0,n.openBlock)(),(0,n.createBlock)("div",{key:e},(0,n.toDisplayString)(e),1)})),128))])])):(0,n.createCommentVNode)("",!0)])):(0,n.createCommentVNode)("",!0),(0,n.createVNode)("div",h,[V.twoFactorEnabled?((0,n.openBlock)(),(0,n.createBlock)("div",g,[(0,n.createVNode)(B,{onConfirmed:V.regenerateRecoveryCodes},{default:(0,n.withCtx)((function(){return[b.recoveryCodes.length>0?((0,n.openBlock)(),(0,n.createBlock)(T,{key:0,class:"mr-3"},{default:(0,n.withCtx)((function(){return[v]})),_:1})):(0,n.createCommentVNode)("",!0)]})),_:1},8,["onConfirmed"]),(0,n.createVNode)(B,{onConfirmed:V.showRecoveryCodes},{default:(0,n.withCtx)((function(){return[0===b.recoveryCodes.length?((0,n.openBlock)(),(0,n.createBlock)(T,{key:0,class:"mr-3"},{default:(0,n.withCtx)((function(){return[y]})),_:1})):(0,n.createCommentVNode)("",!0)]})),_:1},8,["onConfirmed"]),(0,n.createVNode)(B,{onConfirmed:V.disableTwoFactorAuthentication},{default:(0,n.withCtx)((function(){return[(0,n.createVNode)(S,{class:{"opacity-25":b.disabling},disabled:b.disabling},{default:(0,n.withCtx)((function(){return[x]})),_:1},8,["class","disabled"])]})),_:1},8,["onConfirmed"])])):((0,n.openBlock)(),(0,n.createBlock)("div",w,[(0,n.createVNode)(B,{onConfirmed:V.enableTwoFactorAuthentication},{default:(0,n.withCtx)((function(){return[(0,n.createVNode)(N,{type:"button",class:{"opacity-25":b.enabling},disabled:b.enabling},{default:(0,n.withCtx)((function(){return[C]})),_:1},8,["class","disabled"])]})),_:1},8,["onConfirmed"])]))])]})),_:1})}},J=j}}]);