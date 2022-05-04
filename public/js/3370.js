(self.webpackChunk=self.webpackChunk||[]).push([[3370,9376],{9376:(e,a,t)=>{"use strict";t.r(a),t.d(a,{default:()=>N});var r=t(5166),s=(0,r.withScopeId)("data-v-e20b28ee");(0,r.pushScopeId)("data-v-e20b28ee");var o={class:"mb-4"},d={class:"mb-4"},c=(0,r.createVNode)("small",{class:"mt-1 font-thin text-gray-400"},"* Image should be minimum 1920x1080 px. Maximun file size: 10MB/10240KB.",-1),l={class:"mb-4"},n={class:"w-2/3"},i=(0,r.createVNode)("small",{class:"mt-1 font-thin text-gray-400"},"*Thumbnail should be minimum 425x240 px. Maximun file size: 5MB/5120KB.",-1),p={class:"mb-4"},m={class:"text-right mt-5"},u=(0,r.createTextVNode)("Save");(0,r.popScopeId)();var v=s((function(e,a,t,v,V,N){var f=(0,r.resolveComponent)("jet-label"),x=(0,r.resolveComponent)("jet-text-input"),b=(0,r.resolveComponent)("jet-input-error"),g=(0,r.resolveComponent)("jet-multiple-image-input"),w=(0,r.resolveComponent)("jet-image-input"),h=(0,r.resolveComponent)("jet-file-input"),y=(0,r.resolveComponent)("jet-button");return(0,r.openBlock)(),(0,r.createBlock)("form",{onSubmit:a[2]||(a[2]=(0,r.withModifiers)((function(){return N.save&&N.save.apply(N,arguments)}),["prevent"]))},[(0,r.createVNode)("div",o,[(0,r.createVNode)(f,{for:"feedback",value:"Feedback"}),(0,r.createVNode)(x,{id:"feedback",type:"text",class:"mt-1 block w-full",modelValue:V.form.feedback,"onUpdate:modelValue":a[1]||(a[1]=function(e){return V.form.feedback=e}),ref:"feedback",autocomplete:"feedback",rows:"3"},null,8,["modelValue"]),(0,r.createVNode)(b,{message:V.form.errors.feedback,class:"mt-2"},null,8,["message"])]),(0,r.createVNode)("div",d,[(0,r.createVNode)(f,{value:"Images",class:"mb-2"}),(0,r.createVNode)(g,{medias:e.$page.props.previewDesign.mediaCollection,onChange:N.handleImagesChange},null,8,["medias","onChange"]),c,(0,r.createVNode)(b,{message:V.form.errors.images,class:"mt-2"},null,8,["message"]),((0,r.openBlock)(!0),(0,r.createBlock)(r.Fragment,null,(0,r.renderList)(V.form.images,(function(e,a){return(0,r.openBlock)(),(0,r.createBlock)(b,{key:a,message:V.form.errors["images.".concat(a)],class:"mt-2"},null,8,["message"])})),128))]),(0,r.createVNode)("div",l,[(0,r.createVNode)(f,{value:"Thumbnail",class:"mb-2"}),(0,r.createVNode)("div",n,[(0,r.createVNode)(w,{url:e.$page.props.previewDesign.thumbnailMediaUrl,onChange:N.handleThumbnailChange,height:"200px"},null,8,["url","onChange"])]),i,(0,r.createVNode)(b,{message:V.form.errors.thumbnail,class:"mt-2"},null,8,["message"])]),(0,r.createVNode)("div",p,[(0,r.createVNode)(f,{value:"Downloadable",class:"mb-2"}),(0,r.createVNode)(h,{url:e.$page.props.previewDesign.downloadableMediaUrl,onChange:N.handleFileChange},null,8,["url","onChange"]),(0,r.createVNode)(b,{message:V.form.errors.downloadable,class:"mt-2"},null,8,["message"])]),(0,r.createVNode)("div",m,[(0,r.createVNode)(y,{class:{"opacity-25":V.form.processing},disabled:V.form.processing},{default:s((function(){return[u]})),_:1},8,["class","disabled"])])],32)}));const V={data:function(){return{form:this.$inertia.form({feedback:this.$page.props.previewDesign.feedback,thumbnail:null,images:null,downloadable:null,_method:"put"})}},methods:{save:function(){this.form.post(route("preview-designs.update",this.$page.props.previewDesign.id))},handleImagesChange:function(e){this.form.images=e},handleThumbnailChange:function(e){this.form.thumbnail=e},handleFileChange:function(e){this.form.downloadable=e}}};V.render=v,V.__scopeId="data-v-e20b28ee";const N=V},3370:(e,a,t)=>{"use strict";t.r(a),t.d(a,{default:()=>De});var r=t(5166),s=(0,r.withScopeId)("data-v-f40dc5d6");(0,r.pushScopeId)("data-v-f40dc5d6");var o={class:"max-w-5xl divide-y divide-gray-200"},d={class:"flex justify-between py-3 rounded-md"},c=(0,r.createVNode)("div",null,[(0,r.createVNode)("h1",{class:"truncate text-90 font-normal text-2xl"},"Preview Design Details")],-1),l={class:"items-center"},n=(0,r.createVNode)("i",{class:"ti-arrow-left"},null,-1),i={class:"max-w-5xl divide-y divide-gray-200"},p={class:"bg-white mb-6 py-4 px-6 rounded-md"},m={class:"flex border-b -mx-6 px-6"},u=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"ID")],-1),v={class:"w-3/4 py-4 break-words"},V={class:"text-90"},N={class:"flex border-b -mx-6 px-6"},f=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Date")],-1),x={class:"w-3/4 py-4 break-words"},b={class:"text-90"},g={class:"flex border-b -mx-6 px-6"},w=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Name")],-1),h={class:"w-3/4 py-4 break-words"},y={class:"text-90"},D={class:"flex border-b -mx-6 px-6"},k=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Email")],-1),C={class:"w-3/4 py-4 break-words"},S={class:"text-90"},F={class:"flex border-b -mx-6 px-6"},I=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Phone")],-1),B={class:"w-3/4 py-4 break-words"},_={class:"text-90"},T={class:"flex border-b -mx-6 px-6"},j=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Customer Amount")],-1),M={class:"w-3/4 py-4 break-words"},A={class:"text-90"},$={class:"flex border-b -mx-6 px-6"},G=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Customer VAT")],-1),U={class:"w-3/4 py-4 break-words"},P={class:"text-90"},z={class:"flex border-b -mx-6 px-6"},K=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Customer Grand Total")],-1),E={class:"w-3/4 py-4 break-words"},L={class:"text-90"},O={class:"flex border-b -mx-6 px-6"},q=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Customer Currency")],-1),H={class:"w-3/4 py-4 break-words"},J={class:"text-90"},Q={class:"flex border-b -mx-6 px-6"},R=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Deposit Amount")],-1),W={class:"w-3/4 py-4 break-words"},X={class:"text-90"},Y={class:"flex border-b -mx-6 px-6"},Z=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Vat Amount")],-1),ee={class:"w-3/4 py-4 break-words"},ae={class:"text-90"},te={class:"flex border-b -mx-6 px-6"},re=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Grand Total")],-1),se={class:"w-3/4 py-4 break-words"},oe={class:"text-90"},de={class:"flex border-b -mx-6 px-6"},ce=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Product Name")],-1),le={class:"w-3/4 py-4 break-words"},ne={class:"text-90"},ie={class:"flex border-b -mx-6 px-6"},pe=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Vehicle")],-1),me={class:"w-3/4 py-4 break-words"},ue={class:"text-90"},ve={class:"flex border-b -mx-6 px-6"},Ve=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Vehicle Model")],-1),Ne={class:"w-3/4 py-4 break-words"},fe={class:"text-90"},xe={class:"flex  -mx-6 px-6"},be=(0,r.createVNode)("div",{class:"w-1/4 py-4"},[(0,r.createVNode)("h4",{class:"font-normal text-80"},"Description")],-1),ge={class:"w-3/4 py-4 break-words"},we={class:"text-90"};(0,r.popScopeId)();var he=s((function(e,a,t,he,ye,De){var ke=(0,r.resolveComponent)("inertia-link"),Ce=(0,r.resolveComponent)("tab"),Se=(0,r.resolveComponent)("feedback"),Fe=(0,r.resolveComponent)("tabs");return(0,r.openBlock)(),(0,r.createBlock)(r.Fragment,null,[(0,r.createVNode)("div",null,[(0,r.createVNode)("div",o,[(0,r.createVNode)("div",d,[c,(0,r.createVNode)("div",l,[(0,r.createVNode)(ke,{class:"btn btn-primary mr-2",href:e.route("color-changes.index")},{default:s((function(){return[n]})),_:1},8,["href"])])])])]),(0,r.createVNode)("div",i,[(0,r.createVNode)("div",p,[(0,r.createVNode)(Fe,{options:{useUrlFragment:!1},"nav-item-class":"tab-item"},{default:s((function(){return[(0,r.createVNode)(Ce,{name:"General Info"},{default:s((function(){return[(0,r.createVNode)("div",m,[u,(0,r.createVNode)("div",v,[(0,r.createVNode)("p",V,(0,r.toDisplayString)(t.previewDesign.id),1)])]),(0,r.createVNode)("div",N,[f,(0,r.createVNode)("div",x,[(0,r.createVNode)("p",b,(0,r.toDisplayString)(t.previewDesign.dateFormatted),1)])]),(0,r.createVNode)("div",g,[w,(0,r.createVNode)("div",h,[(0,r.createVNode)("p",y,(0,r.toDisplayString)(t.previewDesign.customer.name),1)])]),(0,r.createVNode)("div",D,[k,(0,r.createVNode)("div",C,[(0,r.createVNode)("p",S,(0,r.toDisplayString)(t.previewDesign.customer.email),1)])]),(0,r.createVNode)("div",F,[I,(0,r.createVNode)("div",B,[(0,r.createVNode)("p",_,(0,r.toDisplayString)(t.previewDesign.customer.phone),1)])]),(0,r.createVNode)("div",T,[j,(0,r.createVNode)("div",M,[(0,r.createVNode)("p",A,(0,r.toDisplayString)(t.previewDesign.customerAmountFormatted),1)])]),(0,r.createVNode)("div",$,[G,(0,r.createVNode)("div",U,[(0,r.createVNode)("p",P,(0,r.toDisplayString)(t.previewDesign.customerVatAmountFormatted),1)])]),(0,r.createVNode)("div",z,[K,(0,r.createVNode)("div",E,[(0,r.createVNode)("p",L,(0,r.toDisplayString)(t.previewDesign.customerGrandTotalFormatted),1)])]),(0,r.createVNode)("div",O,[q,(0,r.createVNode)("div",H,[(0,r.createVNode)("p",J,(0,r.toDisplayString)(t.previewDesign.customerCurrency),1)])]),(0,r.createVNode)("div",Q,[R,(0,r.createVNode)("div",W,[(0,r.createVNode)("p",X,(0,r.toDisplayString)(t.previewDesign.depositAmountFormatted),1)])]),(0,r.createVNode)("div",Y,[Z,(0,r.createVNode)("div",ee,[(0,r.createVNode)("p",ae,(0,r.toDisplayString)(t.previewDesign.vatAmountFormatted),1)])]),(0,r.createVNode)("div",te,[re,(0,r.createVNode)("div",se,[(0,r.createVNode)("p",oe,(0,r.toDisplayString)(t.previewDesign.grandTotalFormatted),1)])])]})),_:1}),(0,r.createVNode)(Ce,{name:"Description",class:"mt-5"},{default:s((function(){return[(0,r.createVNode)("div",de,[ce,(0,r.createVNode)("div",le,[(0,r.createVNode)("p",ne,(0,r.toDisplayString)(t.previewDesign.product.name),1)])]),(0,r.createVNode)("div",ie,[pe,(0,r.createVNode)("div",me,[(0,r.createVNode)("p",ue,(0,r.toDisplayString)(t.previewDesign.vehicle.name),1)])]),(0,r.createVNode)("div",ve,[Ve,(0,r.createVNode)("div",Ne,[(0,r.createVNode)("p",fe,(0,r.toDisplayString)(t.previewDesign.vehicleModel.name),1)])]),(0,r.createVNode)("div",xe,[be,(0,r.createVNode)("div",ge,[(0,r.createVNode)("p",we,(0,r.toDisplayString)(t.previewDesign.description),1)])])]})),_:1}),(0,r.createVNode)(Ce,{name:"Feedback",class:"mt-5"},{default:s((function(){return[(0,r.createVNode)(Se)]})),_:1})]})),_:1})])])],64)}));const ye={name:"preview-desings-show",components:{Feedback:t(9376).default},props:{previewDesign:Object},methods:{save:function(){this.form.post(route("preview-designs.update"))}}};ye.render=he,ye.__scopeId="data-v-f40dc5d6";const De=ye}}]);