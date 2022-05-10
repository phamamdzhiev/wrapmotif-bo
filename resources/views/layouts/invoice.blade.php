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

    #print {
        min-height: 10.5in;
    }
    h1, h2, h3, h4, h5, h6, p{
        font-size: 14px;
        margin: 5px;
    }
    .logo {
        height: 45px;
    }
    .logoBottom {
        height: 30px;
    }
    .justify-center {
        display: flex;
        text-align: center;
        justify-content: center;
        -webkit-box-pack: center;
    }

    .flex {
        display: flex;
        display: -webkit-flex;
        width: 100%;
    }
    .mt-2 {
        margin-top: 0.5rem;
    }
    .justify-between {
        display: flex;
        justify-content: space-between;
    }
    .flex-col {
        display: flex;
        flex-direction: column;
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
    .text-sm {
        font-size: 0.875rem;
        line-height: 1.25rem;
    }
    .font-bold {
        font-weight: 700;
    }
    .text-right {
        text-align: right;
    }
    .text-sm {
        font-size: 0.875rem;
        line-height: 1.25rem;
    }
</style>

<body>
    <main id="invoice-container">
        @yield('content')
    </main>
</body>

</html>
