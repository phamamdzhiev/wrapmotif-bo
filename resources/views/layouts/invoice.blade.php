<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Invoice</title>
</head>
<style>
    body {
        font-family: sans-serif;
        font-size: 12px;
    }

    #invoice-container {
        min-height: 100vh;
        max-width: 800px;
        margin: auto;
    }

    .header .logo {
        float: left;
    }

    .header .logo-center {
        text-align: center;
    }

    .header .logo-center img {
        height: 60px;
    }
    .header .logo img {
        height: 60px;
    }

    .header .invoice {
        float: right;
        text-align: right;
    }

    .clearfix {
        clear: both
    }

    .info {
        display: flex;
        justify-content: space-between;
        padding-top: 20px;
    }

    .info .company {}

    .info .customer {
        text-align: right
    }

    .invoice-content {
        margin-top: 10px
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    table,
    td,
    th {
        border: 0.5px solid #dadada;
    }

    td,
    th {
        padding: 10px;
        text-align: left
    }

    tfoot tr {
        font-weight: bold;
    }

    .footer {
        text-align: center;
        margin-top: 10px;
        color: #9e9e9e
    }

    h1, h2, h3, h4, h5, h6, p{
        font-size: 14px;
        margin: 5px;
    }
    .mt-2 {
        margin-top: 0.5rem;
    }


    .w-45{
        width: 49% !important;
    }
    .m-right{
        margin-right: auto
    }
    .m-left{
        margin-left: auto
    }
    .w-full {
        width: 100%;
    }
    .border {
        border: 1px solid #e8e8e8;
    }
    .text-center {
        text-align: center;
    }

    .py-1 {
        padding-top: 0.25rem;
        padding-bottom: 0.25rem;
    }
    .py-2 {
        padding-top: 0.5rem;
        padding-bottom: 0.5rem;
    }
    .px-4 {
        padding-left: 1rem;
        padding-right: 1rem;
    }
    .ml-4 {
        margin-left: 1rem;
    }
    .mt-5 {
        margin-top: 1.25rem;
    }
    .font-bold {
        font-weight: 700;
    }
    .text-right {
        text-align: right;
    }
    .text-left{
        text-align: left !important;
    }

    .bottom{
        position: fixed;
        bottom: 0;
        left: 50%;
        transform: translateX(-50%);
    }
</style>

<body>
    <main id="invoice-container">
        @yield('content')
    </main>
</body>

</html>
