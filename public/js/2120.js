(self.webpackChunk=self.webpackChunk||[]).push([[2120],{2120:(e,t,a)=>{"use strict";a.r(t),a.d(t,{default:()=>v});var r=a(5166),o=(0,r.withScopeId)("data-v-a5b6726a");(0,r.pushScopeId)("data-v-a5b6726a");var s=(0,r.createVNode)("h1",{class:"mb-5 font-bold text-2xl"},"Tags",-1),c={class:"mb-4 flex justify-between items-center"},n=(0,r.createVNode)("span",{class:"mr-2"},"Create",-1),l=(0,r.createVNode)("span",{class:"hidden md:inline"},"Tag",-1),d={class:"bg-white rounded-md shadow overflow-x-auto"},i={key:0,class:"w-full divide-y divide-gray-200"},u=(0,r.createVNode)("thead",{class:"bg-gray-50"},[(0,r.createVNode)("tr",null,[(0,r.createVNode)("th",{scope:"col",class:"px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase"},"ID"),(0,r.createVNode)("th",{scope:"col",class:"px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase"},"Name"),(0,r.createVNode)("th")])],-1),p={class:"bg-white divide-y divide-gray-200"},f={class:"px-6 py-4 whitespace-nowrap"},h={class:"px-6 py-4 whitespace-nowrap"},m={class:"px-6 py-4 whitespace-nowrap text-right text-sm font-medium"},y=(0,r.createVNode)("i",{class:"ti-pencil-alt"},null,-1),g=(0,r.createVNode)("i",{class:"ti-trash"},null,-1),V={key:1,class:"flex justify-center items-center text-gray-600 h-32"},k=(0,r.createVNode)("span",null,"No Feature Added",-1);(0,r.popScopeId)();var N=o((function(e,t,a,N,x,b){var v=(0,r.resolveComponent)("jet-input"),w=(0,r.resolveComponent)("inertia-link"),B=(0,r.resolveComponent)("jet-danger-button"),C=(0,r.resolveComponent)("jet-pagination");return(0,r.openBlock)(),(0,r.createBlock)("div",null,[s,(0,r.createVNode)("div",c,[(0,r.createVNode)(v,{id:"name",type:"text",class:"mt-1 block w-64",modelValue:x.filters.search,"onUpdate:modelValue":t[1]||(t[1]=function(e){return x.filters.search=e}),ref:"name",autocomplete:"name"},null,8,["modelValue"]),(0,r.createVNode)(w,{class:"btn btn-primary",href:e.route("tags.create")},{default:o((function(){return[n,l]})),_:1},8,["href"])]),(0,r.createVNode)("div",d,[a.tags.data.length?((0,r.openBlock)(),(0,r.createBlock)("table",i,[u,(0,r.createVNode)("tbody",p,[((0,r.openBlock)(!0),(0,r.createBlock)(r.Fragment,null,(0,r.renderList)(a.tags.data,(function(t,a){return(0,r.openBlock)(),(0,r.createBlock)("tr",{key:a},[(0,r.createVNode)("td",f,(0,r.toDisplayString)(t.id),1),(0,r.createVNode)("td",h,(0,r.toDisplayString)(t.name),1),(0,r.createVNode)("td",m,[(0,r.createVNode)(w,{class:"btn btn-primary mr-2",href:e.route("tags.edit",t.id)},{default:o((function(){return[y]})),_:2},1032,["href"]),(0,r.createVNode)(B,{onClick:function(e){return b.destroy(t.id)}},{default:o((function(){return[g]})),_:2},1032,["onClick"])])])})),128))])])):((0,r.openBlock)(),(0,r.createBlock)("div",V,[k]))]),(0,r.createVNode)(C,{class:"mt-6",links:a.tags.links},null,8,["links"])])})),x=a(3493);const b={props:{tags:Object,query:Object},data:function(){return{filters:{search:this.query.search}}},watch:{filters:{handler:a.n(x)()((function(){this.getResults("tags.index")}),150),deep:!0}},methods:{destroy:function(e){this.deleteResource(route("tags.destroy",e))}}};b.render=N,b.__scopeId="data-v-a5b6726a";const v=b}}]);