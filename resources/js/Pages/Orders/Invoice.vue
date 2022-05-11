<template>
	<div>
		<!-- Header -->
		<div>
			<div class=" divide-y divide-gray-200">
				<div class="flex justify-between py-3 rounded-md">
					<div>
						<h1 class="truncate text-90 font-normal text-2xl">
							<span class="ml-2"> Invoice No: {{order.invoiceNo}}</span>
						</h1>
					</div>
					<!-- Route Link -->
					<div class="items-center">
						<button class="btn btn-success mr-2" @click="print('print')">
							<span class="ti-printer mr-2"></span> <span> Print</span>
						</button>
                        <a class="btn btn-primary mr-2" :href="route('orders.invoice-pdf', order.id)" target="_blank">
                            <i class="ti-download mr-2"></i> <span> Download</span>
                        </a>

						<inertia-link class="btn btn-primary mr-2" :href="route('orders.index')">
							<i class="ti-arrow-left"></i>
						</inertia-link>
					</div>
				</div>
			</div>
		</div>

		<div id="print" class="bg-white rounded-sm flex flex-col justify-between ">
			<!-- Pdf section -->
			<div class="p-6">
				<!-- Logo -->
				<div class="flex justify-center mt-2">
					<img class="logo" :src="website.secondaryMediaUrl" alt="logo" style="width:200px" />
				</div>

				<div class="flex justify-between mt-5">
					<div class="">
						<p class="text-sm">
							Date of issue:
							<br />
							<span>{{ order.dateFormatted }} </span>
						</p>
					</div>

					<div class="">
						<p class="text-right">Order receipt</p>
						<p class="text-right text-sm">
							<span class="font-bold">{{ order.invoiceNo }} </span>
						</p>
					</div>
				</div>

				<div class="flex justify-between mt-4">
					<!-- company info -->
					<div class="w-full mr-4">
						<h5 class="font-bold">Sold By</h5>
						<div class="border px-4 py-2">
							<div class="text-sm">

								<div class="text-sm">
									<p>{{ website.data.name }}</p>
                                    <p>
                                        {{ website.data.street }} <br>
                                        {{ website.data.zip }}
                                        {{ website.data.city }}<br>
                                        {{ website.data.country }}
                                    </p>
									<p><span class="font-bold">VAT No: </span>{{ website.data.vatNo }}</p>

								</div>

							</div>
						</div>
					</div>

					<!-- customer info -->
					<div class=" w-full ml-4">
						<h5 class="font-bold">Customer</h5>
						<div class="border px-4 py-2">
							<div class="text-sm">
								<p><span>{{ order.customer.name }}</span> <span>{{ order.customer.surname }}</span></p>
								<div v-if="order.customer.companyName">
									<p>{{ order.customer.companyName}}</p>
								</div>
								<p>
									{{ order.customer.billingAddress.street }} <br>
                                    {{ order.customer.billingAddress.zipcode }}
									{{ order.customer.billingAddress.city }} <br>
									{{ order.customer.billingAddress.country }}
								</p>
                                <p v-if="order.customer.companyName && euCountries.includes(order.customer.billingAddress.country)"><span class="font-bold" >VAT No: </span>{{ order.customer.euVatNo}}</p>
							</div>
						</div>
					</div>
				</div>

				<div class="mt-5">

					<!-- Items -->
					<h5 class="font-bold mb-2">Items:</h5>
					<!-- component -->
					<div class="bg-white rounded-primary shadow overflow-x-auto">
						<table class="w-full divide-y divide-gray-200 border-2">
							<thead class="bg-white ">
								<tr class="">
									<th scope="col" class="px-6 py-5 text-left border-2 text-sm text-black uppercase font-bold">#</th>
									<th scope="col" class="px-6 py-5 text-left border-2 text-sm text-black uppercase font-bold">ID</th>
									<th scope="col" class="px-6 py-5 text-left border-2 text-sm text-black uppercase font-bold">Item Name</th>
									<th scope="col" class="px-6 py-5 text-right border-2 text-sm text-black uppercase font-bold">Quantity</th>
									<th scope="col" class="px-6 py-5 text-right border-2 text-sm text-black uppercase font-bold">Unit price</th>
									<th scope="col" class="px-6 py-5 text-right border-2 text-sm text-black uppercase font-bold">Price</th>

								</tr>

							</thead>
							<tbody class="bg-white divide-y divide-gray-200">
								<tr v-for="(orderItem, index) in order.orderItems" :key="index">
									<td class="px-6 py-4 border-2 whitespace-nowrap">
										{{ index + 1 }}
									</td>
									<td class="px-6 py-4 border-2 whitespace-nowrap">{{ orderItem.productId }}</td>
									<td class="px-6 py-4 border-2 whitespace-nowrap">{{ orderItem.product.name }}</td>
									<td class="px-6 py-4 border-2 whitespace-nowrap text-right">1</td>
									<td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ currencySymbol(orderItem.customerAmount, orderItem.customerCurrency) }}</td>
									<td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ currencySymbol(orderItem.customerAmount, orderItem.customerCurrency) }}</td>
								</tr>

								<tr>
									<th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">Amount</th>
									<td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ currencySymbol(order.customerAmount, order.customerCurrency) }}</td>
								</tr>
								<tr>
									<th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">VAT ({{ order.vat }} {{ order.vatType }})</th>
									<td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ currencySymbol(order.vatAmount, order.customerCurrency) }}</td>
								</tr>

								<tr>
									<th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">Discount (-)</th>
									<td class="px-6 py-4 border-2 whitespace-nowrap text-right"> {{ currencySymbol(order.customerTotalDiscount, order.customerCurrency) }}</td>
								</tr>

								<tr>
									<th scope="col" colspan="5" class="px-6 py-5 text-right text-sm text-black uppercase font-bold">TOTAL</th>
									<td class="px-6 py-4 border-2 whitespace-nowrap text-right">{{ currencySymbol(order.customerGrandTotal, order.customerCurrency) }}</td>
								</tr>

							</tbody>
						</table>

					</div>

				</div>
			</div>

			<!-- footer -->
			<div class="flex justify-center mt-auto">
				<div class="">
					<p class="text-xs">
						Email us at info@wrapmotif.com with any questions.
					</p>

					<div class="flex justify-center my-3">
						<img class="logo" :src="website.secondaryMediaUrl" alt="logo" style="width:200px" />
					</div>
					<p class="text-xs mt-1 text-center">
						www.wrapmotif.com
					</p>
				</div>
			</div>
		</div>

	</div>

</template>

<script>
import Button from "@/Jetstream/Button.vue";

export default {
	components: { Button },
	name: "order-invoice",
    data(){
        return {
            euCountries: [
                "Austria", "Belgium", "Bulgaria", "Croatia", "Republic of Cyprus", "Czech Republic", "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia", "Spain and Sweden"
            ]
        };
    },
	props: {
		order: Object,
		website: Object,
	},
	methods: {
		print(id) {
			let contents = document.getElementById(id).innerHTML;
			let frame1 = document.createElement("iframe");
			frame1.name = "frame1";
			frame1.style.position = "absolute";
			frame1.style.top = "-1000000px";
			document.body.appendChild(frame1);
			let frameDoc = frame1.contentWindow
				? frame1.contentWindow
				: frame1.contentDocument.document
				? frame1.contentDocument.document
				: frame1.contentDocument;
			frameDoc.document.open();
			frameDoc.document.write(
				'<html lang="en"><head><title>Invoice</title>'
			);
			frameDoc.document.write(
				'<link rel="stylesheet" type="text/css" href="/css/app.css" />'
			);
			frameDoc.document.write("</head><body>");
			frameDoc.document.write(contents);
			frameDoc.document.write("</body></html>");
			frameDoc.document.close();
			setTimeout(function () {
				window.frames["frame1"].focus();
				window.frames["frame1"].print();
				document.body.removeChild(frame1);
			}, 500);
			return false;
		},
        currencySymbol(value, currency){
            if (currency === "EUR") {
                // return "€ " + Math.ceil(value);
                return "€ " + this.roundToTwo(value);
            } else {
                // return "$ " + Math.ceil(value);
                return "$ " + this.roundToTwo(value);
            }
        },
        roundToTwo(num) {
            return +(Math.round(num + "e+2")  + "e-2");
        }
	},

};
</script>

<style lang="scss" scoped>
#print {
	min-height: 11.5in;
}

.logo {
	height: 45px;
}
.logoBottom {
	height: 30px;
}
</style>

