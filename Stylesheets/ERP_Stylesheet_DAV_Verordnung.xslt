<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fhir="http://hl7.org/fhir"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns="http://www.w3.org/1999/xhtml"
                exclude-result-prefixes="fhir xhtml">

    <!-- Ersteller: (ABDA/DAV) fhir@abda.de -->

    <xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        <html lang="de">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta name="author" content="ABDA/DAV"/>
                <link rel="icon" type="image/png" href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAB71BMVEUAAAD//Pz50tX////97vD/+/z97e774OL73eD73uDscHzdAA3bAADaAADjKjv509f98/TmP0786evoTVv62dz////3vsPtdYDpWGXwiZP98vP////1r7XsbHjlOUnhFSjiIjTqX2z1sLf////////ugIrkMkLlOEjvg43////pVmTjKDrgDyPmQlH74uTpVmPvgozrYm/hFyrmO0v73d/pWWftdoH2trzjKjvmPEv73eD2t73wj5nscHvtd4LvhI7jJDbueoTtcn7xk5zpVWPkLj/lNEXmPk7hFSjmPEv62Nvzo6vrYm7lOUnugIv3wMXjKjvhGSvqXGn1rrX74uXue4bkL0Dtd4L1tbvjKDnhGSvvhY/2t73mQVHlM0TymKD50NToTVzmQlL3wMX6297ymKHqXmzkLj/nSVfynKT2vcPrZXHiIjTjJTfwjJb////0qrHsanbsbXn3wMX++/vwiJLvg4397u/fCR3gESTfBxvfBxzgDiLfCBzfDSDfBhvgEiXkMEDnQ1LlN0fnR1bjJDbqWmjkM0PufYfwjpfufIbvgozqXWrhGy3fCx/gEybnRFP1srj2vcPufonjKzzgDyLeBBjjKTvsb3rhGi3eBBnkLj/tc37iHTDlOEjpVmTiHjDfDCDhFSjgECP///95m2A4AAAAeHRSTlMAAAAAAAAAAAAAAAAAAAAAAAAAAAADLpHYcg0GN5Lg/veqMgECgu/kcAW0+/7cG7Sfqv3dHLNwNPLdHDRu06+N+H9/a/H76uD94iRY5Px/RvP8sDkNcutxM/L+mm7t7lEfzdQrEUup7c1LJZ/2914IRK+tJwp0nwwtze6SAAAAAWJLR0QDEQxM8gAAAAd0SU1FB+gKAgoaARzHrP4AAAD1SURBVBjTY2AAAUZRMXEJSSkmZjCPmUVaRlZOvkJBUUmZFSygoqpWWVVVUV2jriHNBhLQ1KqtrdPWqa2o19VjBwvoV9Q2GBga1VYZm3CABUwbm5rNzC2qqiytOBkYuKxtbFta2+zsHaAC3I7tHZ1d3T29fRUQAR6n/gkTJ02eUlsBFeB1mjpt+oyZs6pqoQJ8zi6us+fMdXP3qK3y9OJnEFDx9vGdN3+Bn39AVW1gUDBDSGhYbdXCmkXhEZFVFVVR0QwxsX1VFbUVcfEJiZXVFUnJDCmpaemL+zMyRQWzsnNy83gZmIXyCwqLioWZmUVKSsvK2QFueUtyDUTGcgAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyNC0xMC0wMlQxMDoyNjowMSswMDowMNzwyJMAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjQtMTAtMDJUMTA6MjY6MDErMDA6MDCtrXAvAAAAV3pUWHRSYXcgcHJvZmlsZSB0eXBlIGlwdGMAAHic4/IMCHFWKCjKT8vMSeVSAAMjCy5jCxMjE0uTFAMTIESANMNkAyOzVCDL2NTIxMzEHMQHy4BIoEouAOoXEXTyQjWVAAAAAElFTkSuQmCC"/>
                <style>
                    <xsl:text disable-output-escaping='yes'>
                        @charset "UTF-8";

                        /*!
                        * Bootstrap  v5.3.0 (https://getbootstrap.com/)
                        * Copyright 2011-2023 The Bootstrap Authors
                        * Licensed under MIT (https://github.com/twbs/bootstrap/blob/main/LICENSE)
                        */
                        :root {
                        --bs-blue: #0d6efd;
                        --bs-indigo: #6610f2;
                        --bs-purple: #6f42c1;
                        --bs-pink: #d63384;
                        --bs-red: #dc3545;
                        --bs-orange: #fd7e14;
                        --bs-yellow: #ffc107;
                        --bs-green: #198754;
                        --bs-teal: #20c997;
                        --bs-cyan: #0dcaf0;
                        --bs-black: #000;
                        --bs-white: #fff;
                        --bs-gray: #6c757d;
                        --bs-gray-dark: #343a40;
                        --bs-gray-100: #f8f9fa;
                        --bs-gray-200: #e9ecef;
                        --bs-gray-300: #dee2e6;
                        --bs-gray-400: #ced4da;
                        --bs-gray-500: #adb5bd;
                        --bs-gray-600: #6c757d;
                        --bs-gray-700: #495057;
                        --bs-gray-800: #343a40;
                        --bs-gray-900: #212529;
                        --bs-primary: #0d6efd;
                        --bs-secondary: #6c757d;
                        --bs-success: #198754;
                        --bs-info: #0dcaf0;
                        --bs-warning: #ffc107;
                        --bs-danger: #dc3545;
                        --bs-light: #f8f9fa;
                        --bs-dark: #212529;
                        --bs-primary-rgb: 13, 110, 253;
                        --bs-secondary-rgb: 108, 117, 125;
                        --bs-success-rgb: 25, 135, 84;
                        --bs-info-rgb: 13, 202, 240;
                        --bs-warning-rgb: 255, 193, 7;
                        --bs-danger-rgb: 220, 53, 69;
                        --bs-light-rgb: 248, 249, 250;
                        --bs-dark-rgb: 33, 37, 41;
                        --bs-primary-text-emphasis: #052c65;
                        --bs-secondary-text-emphasis: #2b2f32;
                        --bs-success-text-emphasis: #0a3622;
                        --bs-info-text-emphasis: #055160;
                        --bs-warning-text-emphasis: #664d03;
                        --bs-danger-text-emphasis: #58151c;
                        --bs-light-text-emphasis: #495057;
                        --bs-dark-text-emphasis: #495057;
                        --bs-primary-bg-subtle: #cfe2ff;
                        --bs-secondary-bg-subtle: #e2e3e5;
                        --bs-success-bg-subtle: #d1e7dd;
                        --bs-info-bg-subtle: #cff4fc;
                        --bs-warning-bg-subtle: #fff3cd;
                        --bs-danger-bg-subtle: #f8d7da;
                        --bs-light-bg-subtle: #fcfcfd;
                        --bs-dark-bg-subtle: #ced4da;
                        --bs-primary-border-subtle: #9ec5fe;
                        --bs-secondary-border-subtle: #c4c8cb;
                        --bs-success-border-subtle: #a3cfbb;
                        --bs-info-border-subtle: #9eeaf9;
                        --bs-warning-border-subtle: #ffe69c;
                        --bs-danger-border-subtle: #f1aeb5;
                        --bs-light-border-subtle: #e9ecef;
                        --bs-dark-border-subtle: #adb5bd;
                        --bs-white-rgb: 255, 255, 255;
                        --bs-black-rgb: 0, 0, 0;
                        --bs-font-sans-serif: system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", "Noto Sans", "Liberation Sans", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
                        --bs-font-monospace: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
                        --bs-gradient: linear-gradient(180deg, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0));
                        --bs-body-font-family: var(--bs-font-sans-serif);
                        --bs-body-font-size: 1rem;
                        --bs-body-font-weight: 400;
                        --bs-body-line-height: 1.5;
                        --bs-body-color: #212529;
                        --bs-body-color-rgb: 33, 37, 41;
                        --bs-body-bg: #fff;
                        --bs-body-bg-rgb: 255, 255, 255;
                        --bs-emphasis-color: #000;
                        --bs-emphasis-color-rgb: 0, 0, 0;
                        --bs-secondary-color: rgba(33, 37, 41, 0.75);
                        --bs-secondary-color-rgb: 33, 37, 41;
                        --bs-secondary-bg: #e9ecef;
                        --bs-secondary-bg-rgb: 233, 236, 239;
                        --bs-tertiary-color: rgba(33, 37, 41, 0.5);
                        --bs-tertiary-color-rgb: 33, 37, 41;
                        --bs-tertiary-bg: #f8f9fa;
                        --bs-tertiary-bg-rgb: 248, 249, 250;
                        --bs-heading-color: inherit;
                        --bs-link-color: #0d6efd;
                        --bs-link-color-rgb: 13, 110, 253;
                        --bs-link-decoration: underline;
                        --bs-link-hover-color: #0a58ca;
                        --bs-link-hover-color-rgb: 10, 88, 202;
                        --bs-code-color: #d63384;
                        --bs-highlight-bg: #fff3cd;
                        --bs-border-width: 1px;
                        --bs-border-style: solid;
                        --bs-border-color: #dee2e6;
                        --bs-border-color-translucent: rgba(0, 0, 0, 0.175);
                        --bs-border-radius: 0.375rem;
                        --bs-border-radius-sm: 0.25rem;
                        --bs-border-radius-lg: 0.5rem;
                        --bs-border-radius-xl: 1rem;
                        --bs-border-radius-xxl: 2rem;
                        --bs-border-radius-2xl: var(--bs-border-radius-xxl);
                        --bs-border-radius-pill: 50rem;
                        --bs-box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
                        --bs-box-shadow-sm: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
                        --bs-box-shadow-lg: 0 1rem 3rem rgba(0, 0, 0, 0.175);
                        --bs-box-shadow-inset: inset 0 1px 2px rgba(0, 0, 0, 0.075);
                        --bs-focus-ring-width: 0.25rem;
                        --bs-focus-ring-opacity: 0.25;
                        --bs-focus-ring-color: rgba(13, 110, 253, 0.25);
                        --bs-form-valid-color: #198754;
                        --bs-form-valid-border-color: #198754;
                        --bs-form-invalid-color: #dc3545;
                        --bs-form-invalid-border-color: #dc3545
                        }

                        *,
                        ::after,
                        ::before {
                        box-sizing: border-box
                        }

                        @media (prefers-reduced-motion:no-preference) {
                        :root {
                        scroll-behavior: smooth
                        }
                        }

                        body {
                        margin: 0;
                        font-family: var(--bs-body-font-family);
                        font-size: var(--bs-body-font-size);
                        font-weight: var(--bs-body-font-weight);
                        line-height: var(--bs-body-line-height);
                        color: var(--bs-body-color);
                        text-align: var(--bs-body-text-align);
                        background-color: var(--bs-body-bg);
                        -webkit-text-size-adjust: 100%;
                        -webkit-tap-highlight-color: transparent
                        }

                        hr {
                        margin: 1rem 0;
                        color: inherit;
                        border: 0;
                        border-top: var(--bs-border-width) solid;
                        opacity: .25
                        }

                        .h1,
                        .h4,
                        h1,
                        h4 {
                        margin-top: 0;
                        margin-bottom: .5rem;
                        font-weight: 500;
                        line-height: 1.2;
                        color: var(--bs-heading-color)
                        }

                        .h1,
                        h1 {
                        font-size: calc(1.375rem + 1.5vw)
                        }

                        @media (min-width:1200px) {

                        .h1,
                        h1 {
                        font-size: 2.5rem
                        }
                        }

                        .h4,
                        h4 {
                        font-size: calc(1.275rem + .3vw)
                        }

                        @media (min-width:1200px) {

                        .h4,
                        h4 {
                        font-size: 1.5rem
                        }
                        }

                        label {
                        display: inline-block
                        }

                        input,
                        textarea {
                        margin: 0;
                        font-family: inherit;
                        font-size: inherit;
                        line-height: inherit
                        }

                        ::-moz-focus-inner {
                        padding: 0;
                        border-style: none
                        }

                        textarea {
                        resize: vertical
                        }

                        ::-webkit-datetime-edit-day-field,
                        ::-webkit-datetime-edit-fields-wrapper,
                        ::-webkit-datetime-edit-hour-field,
                        ::-webkit-datetime-edit-minute,
                        ::-webkit-datetime-edit-month-field,
                        ::-webkit-datetime-edit-text,
                        ::-webkit-datetime-edit-year-field {
                        padding: 0
                        }

                        ::-webkit-inner-spin-button {
                        height: auto
                        }

                        ::-webkit-search-decoration {
                        -webkit-appearance: none
                        }

                        ::-webkit-color-swatch-wrapper {
                        padding: 0
                        }

                        ::-webkit-file-upload-button {
                        font: inherit;
                        -webkit-appearance: button
                        }

                        ::file-selector-button {
                        font: inherit;
                        -webkit-appearance: button
                        }

                        :root {
                        --bs-breakpoint-xs: 0;
                        --bs-breakpoint-sm: 576px;
                        --bs-breakpoint-md: 768px;
                        --bs-breakpoint-lg: 992px;
                        --bs-breakpoint-xl: 1200px;
                        --bs-breakpoint-xxl: 1400px
                        }

                        .row {
                        --bs-gutter-x: 1.5rem;
                        --bs-gutter-y: 0;
                        display: flex;
                        flex-wrap: wrap;
                        margin-top: calc(-1 * var(--bs-gutter-y));
                        margin-right: calc(-.5 * var(--bs-gutter-x));
                        margin-left: calc(-.5 * var(--bs-gutter-x))
                        }

                        .row>* {
                        flex-shrink: 0;
                        width: 100%;
                        max-width: 100%;
                        padding-right: calc(var(--bs-gutter-x) * .5);
                        padding-left: calc(var(--bs-gutter-x) * .5);
                        margin-top: var(--bs-gutter-y)
                        }

                        .col {
                        flex: 1 0 0%
                        }

                        .col-1 {
                        flex: 0 0 auto;
                        width: 8.33333333%
                        }

                        .col-2 {
                        flex: 0 0 auto;
                        width: 16.66666667%
                        }

                        .col-3 {
                        flex: 0 0 auto;
                        width: 25%
                        }

                        .col-4 {
                        flex: 0 0 auto;
                        width: 33.33333333%
                        }

                        .col-6 {
                        flex: 0 0 auto;
                        width: 50%
                        }

                        .col-8 {
                        flex: 0 0 auto;
                        width: 66.66666667%
                        }

                        .col-9 {
                        flex: 0 0 auto;
                        width: 75%
                        }

                        .col-10 {
                        flex: 0 0 auto;
                        width: 83.33333333%
                        }

                        .col-12 {
                        flex: 0 0 auto;
                        width: 100%
                        }

                        .g-1 {
                        --bs-gutter-x: 0.25rem
                        }

                        .g-1 {
                        --bs-gutter-y: 0.25rem
                        }

                        .g-2 {
                        --bs-gutter-x: 0.5rem
                        }

                        .g-2 {
                        --bs-gutter-y: 0.5rem
                        }

                        @media (min-width:768px) {
                        .col-md-6 {
                        flex: 0 0 auto;
                        width: 50%
                        }
                        }

                        @keyframes progress-bar-stripes {
                        0% {
                        background-position-x: 1rem
                        }
                        }

                        @keyframes spinner-border {
                        to {
                        transform: rotate(360deg)
                        }
                        }

                        @keyframes spinner-grow {
                        0% {
                        transform: scale(0)
                        }

                        50% {
                        opacity: 1;
                        transform: none
                        }
                        }

                        @keyframes placeholder-glow {
                        50% {
                        opacity: .2
                        }
                        }

                        @keyframes placeholder-wave {
                        100% {
                        -webkit-mask-position: -200% 0%;
                        mask-position: -200% 0%
                        }
                        }

                        .border-1 {
                        border-width: 1px !important
                        }

                        .flex-grow-1 {
                        flex-grow: 1 !important
                        }
                        /* Bootstrap Ende */
                    </xsl:text>
                </style>
                <style>
                    /* Internes Stylesheet */
                    :root{
                    --background-color-ges: #F6C6AD; /* #c6dffd; */  /* TODO: Kostenträgerauswertung GKV/SKT/BG/UK und PKV/SEL*/
                    --border-background-color-ges: #F2AA84; /* #d8c5ff; */
                    --text-color-ges: #C04F15FF; /* #C04F15FF; */
                    --text-color-inputs: #000000;
                    --background-stripes-color: #e9e9e9;
                    --outter-div-bg-color: #ffffff;
                    --background-color-int: var(--border-background-color-ges);
                    --border-background-color-int: var(--border-background-color-ges);
                    }

                    body {
                    width: 210mm;
                    max-width: 210mm;
                    min-width: 210mm;
                    height: 297mm;
                    max-height: 297mm;
                    min-height: 297mm;
                    left:0;
                    top: 0;
                    margin: 0px;
                    padding: 5mm;
                    font-size: 12px;
                    font-family: Arial, sans-serif;
                    background: repeating-linear-gradient(
                    135deg,
                    var(--background-stripes-color),
                    var(--background-stripes-color) 10px,
                    transparent 10px,
                    transparent 20px
                    );
                    }

                    .background-container-ges{
                    background-color: var(--background-color-ges);
                    border: 1px solid var(--border-background-color-ges);
                    }

                    h1{
                    font-size: large;
                    font-weight: bold;
                    }

                    h4{
                    margin-top: 2mm;
                    color:var(--text-color-ges);
                    font-size: medium;
                    font-weight: bold;
                    padding-bottom: 0px;
                    margin-bottom: 0px;
                    }

                    input{
                    border: 1px solid c3c3c3;
                    outline: none;
                    }

                    input:hover{
                    border: 1px solid c3c3c3;
                    outline: none;
                    }

                    input:focus{
                    border: 1px solid c3c3c3;
                    outline: none;
                    }

                    input:hover{
                    outline: none;
                    }

                    .input-container {
                    position: relative;
                    display: inline-block;
                    width: 100%;
                    }

                    .input-container label {
                    position: absolute;
                    top: -0px;
                    left: 0px;
                    padding: 0 5px;
                    font-size: 10px;
                    color: var(--text-color-ges);
                    }

                    .text-input{
                    font-family: Consolas, sans-serif;
                    height: 10mm;
                    width: 100%;
                    text-align: left;
                    border: 1px solid var(--text-color-ges);
                    box-shadow: none;
                    appearance: none;
                    outline: none;
                    background-color: var(--background-color-ges);
                    padding-top: 14px;
                    padding-left: 10px;
                    color: var(--text-color-inputs);
                    }

                    .text-input div{
                    margin-left: 10px;
                    }

                    .intern-container{
                    background-color: var(--background-color-int);
                    padding:2mm;
                    }
                    .row{
                    padding-top: 0px;
                    padding-bottom: 3px;
                    }
                    #txt-area{
                    overflow: hidden;
                    resize: none;
                    line-height: 1;
                    padding-top: 15px;
                    }
                    .container{
                    width: 297mm;
                    max-width: 297mm;
                    min-width: 297mm;
                    }
                    hr{
                    margin-top: 1mm;
                    margin-bottom: 1mm;
                    background-color: var(--text-color-ges);
                    }
                    .container, .container-fluid {
                    width: 100% !important;
                    max-width: none !important;
                    }

                    .col, .col-*, .row {
                    flex: none !important;
                    width: auto !important;
                    }

                    .checkbox-container {
                    display: flex;
                    align-items: center;
                    flex-direction: row-reverse; /* Position checkbox to the left and label to the right */
                    margin-left: 0px;
                    font-size: 10px;
                    color: var(--text-color-ges);
                    }

                    .checkbox-container > label {
                    margin-left: 4px; /* Adjust spacing between checkbox and label */
                    margin-right: 0; /* Remove right margin to ensure consistency */
                    font-size: 8px;
                    width:100%;
                    }

                    /* Hide the default checkbox */
                    input[type="checkbox"] {
                    margin-left: 3px;
                    accent-color: var(--text-color-ges);
                    border: 1px solid var(--text-color-ges);
                    outline: var(--text-color-ges);
                    -webkit-appearance: none;
                    -moz-appearance: none;
                    appearance: none; /* Removes default styling */
                    width: 15px;
                    min-width: 15px;
                    height: 15px;
                    border: 1px solid var(--text-color-ges); /* Default border color */
                    background-color: var(--background-color-ges); /* Default background color */
                    cursor: pointer;
                    }

                    /* Change the background color when checked */
                    input[type="checkbox"]:checked {
                    background-color: var(--background-color-ges); /* Green when checked */
                    border-color: var(--text-color-ges); /* Green border when checked */
                    }

                    /* Add a checkmark */
                    input[type="checkbox"]:checked::before {
                    content: "x";
                    display: block;
                    text-align: center;
                    font-size: 16px;
                    line-height: 11px; /* Align the checkmark vertically */
                    top: -10px;
                    width: 15px;
                    height: 15px;
                    min-width: 15px;
                    margin-left: -1px;
                    }

                    .row .col-2 {
                    display: flex;
                    align-items: center;
                    justify-content: flex-start; /* Aligns all checkboxes to the left edge */
                    }

                    .outter-div {
                    background-color: var(--outter-div-bg-color);
                    overflow: hidden;
                    width: 210mm;
                    max-width: 210mm;
                    min-width: 210mm;
                    height: 297mm;
                    max-height: 297mm;
                    min-height: 297mm;
                    padding:5mm;
                    }

                    .col-1-5{
                    flex: 0 0 auto;
                    width: 12.5%;
                    }
                    .col-2-5{
                    flex: 0 0 auto;
                    width: 20.8333333333333%;
                    }

                    @media print {
                    @page {
                    size: A4;
                    margin: 0;
                    }
                    body {
                    margin: 0;
                    padding: 0;
                    }
                    }

                    .width-100{ width: 100%; }
                    .padding-1{ padding: 0.5%; }
                    .border-l{ border-left: 0px solid var(--border-color-dark); }
                    .height-15mm{ height: 15mm; }
                    .padding-bot-2{ padding-bottom: 2mm; }
                    .vertical-align{ margin-top: 10px; }
                    .padding-top-bot-0{ padding-top: 0px; padding-bottom: 0px; }
                    .margin-top-minus-6px{ margin-top: -6px; }
                    .margin-left-min-2{ margin-left: -2px; }
                    .margin-right-min-2{ margin-right: -2px; }
                    .margin-top-min-5{ margin-top: -5px; }
                    .margin-top-min-6{ margin-top: -6px; }
                    .margin-top-5{ margin-top: 5px; }
                    /* Internes Stylesheet Ende */
                </style>
                <title>DAV Stylesheet Verordnung</title>
            </head>
            <body>
                <xsl:choose>
                    <xsl:when test="not(fhir:Bundle)">
                        <b>Instanz ist kein Bundle</b>
                        <br/>
                    </xsl:when>
                    <xsl:when test="fhir:Bundle">
                        <xsl:choose>
                            <xsl:when test="fhir:Bundle/fhir:meta/fhir:profile/@value = 'https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.1.0'">
                                <xsl:apply-templates select="fhir:Bundle"/>
                            </xsl:when>
                            <xsl:when test="fhir:Bundle/fhir:meta/fhir:profile/@value = 'https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Bundle|1.3'">
                                <xsl:apply-templates select="fhir:Bundle"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <b>!!! ProfileVersion stimmt nicht bzw. wird nicht unterstützt!!!</b>
                                <br/>
                                Profile+Version: "<xsl:value-of select="fhir:Bundle/fhir:meta/fhir:profile/@value"/>"
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                </xsl:choose>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="fhir:Bundle[not(ancestor::fhir:Bundle)]">
        <h1>Verordnung</h1>
        <div class="background-container-ges outter-div">
            <div class="row g-1 intern-container">
                <div class="col-md-6 border-1">
                    <h4>Patient</h4> <!-- TODO: Praxisbedarf -->
                    <div class="row g-1 g-1">
                        <div class="col-6">
                            <div class="input-container">
                                <label>Kostenträger Typ / Vers. Art.</label> <!-- ID 7 / ID 14-->
                                <div class="text-input">
                                    <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Coverage/fhir:type/fhir:coding/fhir:code/@value"/>
                                    <xsl:variable name="versichertenart" select="//fhir:entry/fhir:resource/fhir:Coverage/fhir:extension[@url='http://fhir.de/StructureDefinition/gkv/versichertenart']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS']/fhir:code/@value"/>
                                    <xsl:choose>
                                        <xsl:when test="$versichertenart=1"> Mitglieder(</xsl:when>
                                        <xsl:when test="$versichertenart=3"> Familienangehörige(</xsl:when>
                                        <xsl:when test="$versichertenart=5"> Rentner(</xsl:when>
                                    </xsl:choose>
                                    <xsl:value-of select="($versichertenart)"/>)
                                </div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="input-container"> <!-- Kostenträger -->
                                <xsl:choose>
                                    <xsl:when test="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor/fhir:identifier/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Alternative_IK']/fhir:valueIdentifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value">
                                        <label>aKostenträger IK</label> <!-- ID 10 -->
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor/fhir:identifier/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Alternative_IK']/fhir:valueIdentifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value"/>
                                        </div>
                                    </xsl:when>
                                    <xsl:otherwise> <!-- TODO: oder immer ausgeben ? -->
                                        <!--xsl:when test="fhir:entry/fhir:resource/fhir:Coverage/fhir:payor/fhir:identifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value"-->
                                        <label>Kostenträger IK</label> <!-- ID 9 -->
                                        <div class="text-input">
                                            <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Coverage/fhir:payor/fhir:identifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value"/>
                                        </div>
                                        <!--/xsl:when-->
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="input-container"> <!-- TODO: ART!?! abc? ab version 1.2 keine Unterscheidung mehr !!! -> Coverage.type.coding.code (KBV_VS_FOR_Payor_type) -->
                                <!--label>Versicherten Nr. </label>  ID 19 a/b/c -->
                                <!--xsl:choose>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Patient/fhir:identifier[fhir:system/@value='http://fhir.de/sid/gkv/kvid-10']/fhir:value/@value">
                                        <label>Vers.-Nr.(GKV)</label> <!- GKV-VersichertenID  (ID 19a): ->
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Patient/fhir:identifier[fhir:system/@value='http://fhir.de/sid/pkv/kvid-10']/fhir:value/@value">
                                        <label>Vers.-Nr.(PKV)</label> <!- PKV-VersichertenID  (ID 19b): ->
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Patient/fhir:identifier[fhir:system/@value='http://fhir.de/sid/gkv/kvk-versichertennummerr']/fhir:value/@value">
                                        <label>Vers.-Nr.(KVK)</label> <!- KVK-VersichertenID  (ID 19c): ->
                                    </xsl:when>
                                </xsl:choose-->

                                <xsl:choose>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Coverage/fhir:type/fhir:coding/fhir:code/@value='GKV'">
                                        <label>Vers.-Nr.(GKV)</label> <!-- GKV-VersichertenID  (ID 19a): -->
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Coverage/fhir:type/fhir:coding/fhir:code/@value='PKV'">
                                        <label>Vers.-Nr.(PKV)</label> <!-- PKV-VersichertenID  (ID 19b): -->
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Coverage/fhir:type/fhir:coding/fhir:code/@value='SKT'">
                                        <label>Vers.-Nr.(SKT)</label> <!-- KVK-VersichertenID  (ID 19c): -->
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Coverage/fhir:type/fhir:coding/fhir:code/@value='UK'">
                                        <label>Vers.-Nr.(UK)</label> <!-- KVK-VersichertenID  (ID 19c): -->
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Coverage/fhir:type/fhir:coding/fhir:code/@value='BG'">
                                        <label>Vers.-Nr.(BG)</label> <!-- KVK-VersichertenID  (ID 19c): -->
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Coverage/fhir:type/fhir:coding/fhir:code/@value='SEL'">
                                        <label>Vers.-Nr.(SEL)</label> <!-- KVK-VersichertenID  (ID 19c): -->
                                    </xsl:when>
                                </xsl:choose>
                                <div class="text-input">
                                    <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:identifier/fhir:value/@value"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <xsl:if test="fhir:entry/fhir:resource/fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_PKV_Tariff']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_PKV_TARIFF']/fhir:code/@value">
                        <div class="row g-1">
                            <div class="col-12">
                                <div class="input-container">
                                    <label>PKV-Tarifart</label> <!-- ID 11 -->
                                    <div class="text-input">
                                        <xsl:variable name="pkvtarif" select="//fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_PKV_Tariff']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_PKV_TARIFF']/fhir:code/@value"/>
                                        <xsl:choose>
                                            <xsl:when test="$pkvtarif=01"> Individualtarif (</xsl:when>
                                            <xsl:when test="$pkvtarif=02"> Standardtarif (</xsl:when>
                                            <xsl:when test="$pkvtarif=03"> Basistarif (</xsl:when>
                                            <xsl:when test="$pkvtarif=04"> Notlagentarif (</xsl:when>
                                        </xsl:choose>
                                        <xsl:value-of select="($pkvtarif)"/>)
                                    </div>
                                </div>
                            </div>
                        </div>
                    </xsl:if>
                    <div class="row g-1">
                        <div class="col-12">
                            <div class="input-container">
                                <label>Kostenträger</label> <!-- ID 11 -->
                                <div class="text-input">
                                    <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Coverage/fhir:payor[1]/fhir:display/@value"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <xsl:if test="fhir:entry/fhir:resource/fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN']/fhir:code/@value">
                        <div class="row g-1">
                            <div class="col-12">
                                <div class="input-container">
                                    <label>Rechtsgrundlage</label> <!-- ID 17 -->
                                    <xsl:variable name="_rez_ID17" select="//fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN']/fhir:code/@value"/>
                                    <xsl:choose>
                                        <xsl:when test="$_rez_ID17=00">
                                            <div class="text-input">
                                                <xsl:choose>
                                                    <xsl:when test="$_rez_ID17=00">ohne Ersatzverordnungskennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=01">ASV-Kennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=04">Entlassmanagement-Kennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=07">TSS-Kennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=10">nur Ersatzverordnungskennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=11">ASV-Kennzeichen mit Ersatzverordnungskennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=14">Entlassmanagement-Kennzeichen mit Ersatzverordnungskennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=17">TSS-Kennzeichen mit Ersatzverordnungskennzeichen (</xsl:when>
                                                </xsl:choose>
                                                <xsl:value-of select="($_rez_ID17)"/>)
                                            </div>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <div class="text-input" style="font-weight: bold;">
                                                <xsl:choose>
                                                    <xsl:when test="$_rez_ID17=00">ohne Ersatzverordnungskennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=01">ASV-Kennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=04">Entlassmanagement-Kennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=07">TSS-Kennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=10">nur Ersatzverordnungskennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=11">ASV-Kennzeichen mit Ersatzverordnungskennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=14">Entlassmanagement-Kennzeichen mit Ersatzverordnungskennzeichen (</xsl:when>
                                                    <xsl:when test="$_rez_ID17=17">TSS-Kennzeichen mit Ersatzverordnungskennzeichen (</xsl:when>
                                                </xsl:choose>
                                                <xsl:value-of select="($_rez_ID17)"/>)
                                            </div>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </div>
                            </div>
                        </div>
                    </xsl:if>
                    <div class="row g-1">
                        <div class="col-8">
                            <div class="input-container">
                                <label>Name u. Vorname d. Versicherten</label> <!-- TODO: Titel 22, Vorname 20, Name 21 ?!? -->
                                <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input height-15mm&#34; readonly/&gt;</xsl:text>
                                <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:prefix/@value">
                                    <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:prefix/@value"/>
                                    <xsl:text> </xsl:text>
                                </xsl:if>
                                <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:given/@value">
                                    <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:given/@value"/>
                                    <xsl:text> </xsl:text>
                                </xsl:if>
                                <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:name/fhir:family/@value"/>
                                <xsl:text disable-output-escaping='yes'>&lt;/textarea&gt;</xsl:text>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="input-container">
                                <label>Geburtstag</label> <!-- ID 25 -->
                                <div class="text-input">
                                    <xsl:call-template name="formatDate">
                                        <xsl:with-param name="date" select="//fhir:entry/fhir:resource/fhir:Patient/fhir:birthDate/@value"/>
                                    </xsl:call-template>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="col-10">
                            <div class="input-container"> <!-- Adresse (Strasse/Postfach) (ID 27/34) -->
                                <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']">
                                    <label>Straßenadresse</label>
                                </xsl:if>
                                <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']">
                                    <label>Postfachanschrift</label>
                                </xsl:if>
                                <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input height-15mm&#34; readonly/&gt;</xsl:text>
                                <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']">
                                    <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:line/@value"/>
                                </xsl:if>
                                <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']">
                                    <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:line/@value"/>
                                </xsl:if>
                                <xsl:text disable-output-escaping='yes'>&lt;/textarea&gt;</xsl:text>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-container">
                                <label>Land</label> <!-- Wohnsitzlaendercode (ID 28/35) -->
                                <div class="text-input">
                                    <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']">
                                        <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:country/@value"/>
                                    </xsl:if>
                                    <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']">
                                        <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:country/@value"/>
                                    </xsl:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="col-3">
                            <div class="input-container">
                                <label>PLZ</label> <!-- PLZ (ID 29/36) -->
                                <div class="text-input">
                                    <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']">
                                        <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:postalCode/@value"/>
                                    </xsl:if>
                                    <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']">
                                        <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:postalCode/@value"/>
                                    </xsl:if>
                                </div>
                            </div>
                        </div>
                        <div class="col-9">
                            <div class="input-container">
                                <label>Ort</label> <!-- Ort (ID 30/37) -->
                                <div class="text-input">
                                    <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']">
                                        <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='both']/fhir:city/@value"/>
                                    </xsl:if>
                                    <xsl:if test="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']">
                                        <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Patient/fhir:address[fhir:type/@value='postal']/fhir:city/@value"/>
                                    </xsl:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    <h4>Rezeptdaten</h4>
                    <div class="row g-1">
                        <div class="col-4">
                            <div class="input-container">
                                <label>Ausstellungsdatum</label> <!-- ID 80 -->
                                <div class="text-input">
                                    <xsl:call-template name="formatDate">
                                        <xsl:with-param name="date" select="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:authoredOn/@value"/>
                                    </xsl:call-template>
                                </div>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="input-container">
                                <label>Rezept ID</label> <!-- ID 5 -->
                                <div class="text-input">
                                    <xsl:value-of select="fhir:identifier/fhir:value/@value"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-2 margin-top-5">
                        <!-- Zeile 4 -->
                        <div class="col-2-5">
                            <div class="checkbox-container">
                                <label>Gebühr frei</label> <!-- Zuzahlungsstatus (ID 77) = 1 -->
                                <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34; value=&#34;coding&#34;</xsl:text>
                                <xsl:choose>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_StatusCoPayment']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_StatusCoPayment']/fhir:code/@value=1">
                                        <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </div> <div class="col-2-5">
                        <div class="checkbox-container">
                            <label>BVG</label> <!-- ID 85 -->
                            <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                            <xsl:choose>
                                <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_BVG']/fhir:valueBoolean/@value = 'true'">
                                    <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text> <!-- Ja -->
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text> <!-- Nein -->
                                </xsl:otherwise>
                            </xsl:choose>
                        </div>
                    </div> <div class="col-2-5">
                        <div class="checkbox-container">
                            <label>Noctu</label> <!-- (ID 82) -->
                            <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                            <xsl:choose>
                                <xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_EmergencyServicesFee']/fhir:valueBoolean/@value = 'true'">
                                    <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text> <!-- Ja -->
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text> <!-- Nein -->
                                </xsl:otherwise>
                            </xsl:choose>
                        </div>
                    </div>
                        <div class="col-2-5">
                            <div class="checkbox-container">
                                <label>Impfstoff</label> <!-- ID 84 -->
                                <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                                <xsl:choose>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Vaccine']/fhir:valueBoolean/@value = 'true'">
                                        <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text> <!-- Ja -->
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text disable-output-escaping='yes'>y/&gt;</xsl:text> <!-- Nein -->
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </div>
                        <!--div class="col-2">
                            <div class="checkbox-container">
                                <label>Spr.St.-Bedarf</label>
                                <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                                <xsl:choose>
									<xsl:when test="//fhir:entry/fhir:resource/fhir:SupplyRequest">
										<xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text disable-output-escaping='yes'>/&gt;</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
                            </div>
                        </div-->
                    </div>
                    <div class="row g-2">
                        <div class="col-2-5">
                            <div class="checkbox-container">
                                <label>Gebühr pfl.</label> <!-- Zuzahlungsstatus (ID 77) = 0 --> <!-- TODO: = 2 (kuenstliche Befruchtung (Regelung nach § 27a SGB V)) Ausgabe ?!? -->
                                <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                                <xsl:choose>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_StatusCoPayment']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_StatusCoPayment']/fhir:code/@value=0">
                                        <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </div>
                        <div class="col-2-5">
                            <div class="checkbox-container"> <!-- Unfallkennzeichen ID 72 -->
                                <label>Unfall</label> <!-- TODO: Berufskrankheit ?!? -->
                                <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                                <xsl:choose>
                                    <xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfallkennzeichen']/fhir:valueCoding/fhir:code/@value = '1'">
                                        <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </div> <div class="col-2-5">
                        <div class="checkbox-container">
                            <label>Arbeitsunfall</label>
                            <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                            <xsl:choose>
                                <xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfallkennzeichen']/fhir:valueCoding/fhir:code/@value = '2'">
                                    <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </div>
                    </div>
                        <div class="col-3">
                            <div class="checkbox-container">
                                <label>Berufskrankheit</label>
                                <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                                <xsl:choose>
                                    <xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfallkennzeichen']/fhir:valueCoding/fhir:code/@value = '4'">
                                        <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Verordner Container --> <!-- TODO: Sprechstundenbedarf -->
                <div class="col-md-6 border-l">
                    <h4>Verordner</h4>
                    <xsl:variable name="author_id">
                        <xsl:call-template name="getIdFromReference">
                            <xsl:with-param name="ref" select="fhir:entry/fhir:resource/fhir:Composition/fhir:author[fhir:type/@value='Practitioner']/fhir:reference/@value"/>
                        </xsl:call-template>
                    </xsl:variable>
                    <div class="row g-1">
                        <!-- Zeile 1 -->
                        <div class="col-12">
                            <div class="input-container">
                                <label>Name u. Vorname</label> <!-- Titel (ID 22/55), Name (ID 141/142), Vorname (ID 44/53) -->
                                <!-- TODO: Teiltexttrennung -->
                                <div class="text-input">
                                    <xsl:if test="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:name/fhir:prefix/@value">
                                        <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:name/fhir:prefix/@value"/>
                                        <xsl:text disable-output-escaping='yes'> </xsl:text>
                                    </xsl:if>
                                    <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:name/fhir:given/@value"/>
                                    <xsl:text disable-output-escaping='yes'> </xsl:text>
                                    <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:name/fhir:family/@value"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="col-12">
                            <div class="input-container">
                                <label>Berufsbezeichnung</label> <!-- (ID 49/58) -->
                                <div class="text-input">
                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:qualification/fhir:code/fhir:text/@value"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="col-12">
                            <div class="input-container">
                                <label>Qualifikation</label> <!-- (Typ (ID 41/5) -->
                                <div class="text-input">
                                    <xsl:variable name="arzttyp" select="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_Qualification_Type']/fhir:code/@value"/>
                                    <xsl:choose>
                                        <xsl:when test="$arzttyp=00">Arzt = </xsl:when>
                                        <xsl:when test="$arzttyp=01">Zahnarzt = </xsl:when>
                                        <xsl:when test="$arzttyp=02">Hebamme = </xsl:when>
                                        <xsl:when test="$arzttyp=03">Arzt in Weiterbildung = </xsl:when>
                                        <xsl:when test="$arzttyp=04">Arzt als Vertreter = </xsl:when>
                                    </xsl:choose>
                                    <xsl:value-of select="($arzttyp)" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="col-6"> <!-- Arztnummer / LANR (ID 42a/52a) oder Zahnarztnummer / ZANR (ID 42b/52b)-->
                            <div class="input-container">
                                <xsl:choose>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR']/fhir:value/@value">
                                        <label>LANR</label>
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR']/fhir:value/@value"/>
                                        </div>
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/zahnarztnummer']/fhir:value/@value">
                                        <label>ZANR</label>
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/zahnarztnummer']/fhir:value/@value"/>
                                        </div>
                                    </xsl:when>
                                    <xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:identifier[fhir:system/@value='https://gematik.de/fhir/sid/telematik-id']/fhir:value/@value"> <!-- TODO: und Angabe ?!? -->
                                        <label>Telematik-ID</label> <!-- (ID 42c/52c) -->
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:identifier[fhir:system/@value='https://gematik.de/fhir/sid/telematik-id']/fhir:value/@value"/>
                                        </div>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_Qualification_Type']/fhir:code/@value=4">
                                            <!-- TODO: xsl:if test="(//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_Qualification_Type']/fhir:code/@value=4) and (//fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN']/fhir:code/@value in ('01','11')"/
                                            <xsl:if test="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_Qualification_Type']/fhir:code/@value=4) and (//fhir:Composition/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN']/fhir:code/@value in ('01','11')"/>
                                            -->
                                            <label>ASV-FachgruppenNr/-TeamNr</label>
                                            <div class="text-input">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Fachgruppennummer_ASV']/fhir:code/@value"/>
                                                <xsl:text disable-output-escaping='yes'> / </xsl:text>
                                                <!-- TODO: was wenn nicht angegeben -> v<1.2 -->
                                                <xsl:value-of select="//fhir:PractitionerRole/fhir:organization/fhir:identifier[fhir:system/@value='http://fhir.de/NamingSystem/asv/teamnummer']/fhir:value/@value"/>
                                            </div>
                                        </xsl:if>
                                        <xsl:if test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$author_id]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_Qualification_Type']/fhir:code/@value=1">
                                            <label>keine Angabe</label>
                                            <div class="text-input">
                                            </div>
                                        </xsl:if>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="input-container"> <!-- Identifikator der Einrichtung (ID 61) -->
                                <xsl:choose>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR']/fhir:value/@value">
                                        <label>Betriebsstättennummer</label> <!-- ID 61a -->
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR']/fhir:value/@value"/>
                                        </div>
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/kzvabrechnungsnummer']/fhir:value/@value">
                                        <label>KZV-Abrechnungsnummer</label><!-- (ID 61c) -->
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/kzvabrechnungsnummer']/fhir:value/@value"/>
                                        </div>
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/dkgev/standortnummer']/fhir:value/@value">
                                        <label>Standortnummer</label> <!-- (ID 61d) -->
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/dkgev/standortnummer']/fhir:value/@value"/>
                                        </div>
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value">
                                        <label>Institutionskennzeichen</label> <!-- (ID 61b) -->
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='http://fhir.de/sid/arge-ik/iknr']/fhir:value/@value"/>
                                        </div>
                                    </xsl:when>
                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='https://gematik.de/fhir/sid/telematik-id']/fhir:value/@value">
                                        <label>Telematik-ID</label> <!-- (ID 61e) -->
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:identifier[fhir:system/@value='https://gematik.de/fhir/sid/telematik-id']/fhir:value/@value"/>
                                        </div>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <label> </label> <!-- Platzhalter?!? --> <!-- TODO: was macht das Design?!? -->
                                        <div class="text-input">
                                        </div>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="col-12">
                            <div class="input-container">
                                <label>Einrichtung</label> <!-- Name der Einrichtung (ID 62) -->
                                <div class="text-input">
                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:name/@value"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="col-10">
                            <div class="input-container">
                                <label>Straßenadresse</label> <!-- Strassenadresse der Einrichtung (ID 143) -->
                                <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input height-15mm&#34; readonly/&gt;</xsl:text>
                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address[fhir:type/@value='both']/fhir:line/@value"/>
                                <xsl:text disable-output-escaping='yes'>&lt;/textarea&gt;</xsl:text>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-container">
                                <label>Land</label> <!-- Wohnsitzländercode (ID 63) -->
                                <div class="text-input">
                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address[fhir:type/@value='both']/fhir:country/@value"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="col-3">
                            <div class="input-container">
                                <label>PLZ</label> <!-- Postleitzahl (ID 64) -->
                                <div class="text-input">
                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address[fhir:type/@value='both']/fhir:postalCode/@value"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-9">
                            <div class="input-container"> <!-- Ort (ID 65) -->
                                <label>Ort</label>
                                <div class="text-input">
                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:address[fhir:type/@value='both']/fhir:city/@value"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="col-6">
                            <div class="input-container">
                                <label>Telefon</label> <!-- Telefonnummer (ID 69) -->
                                <div class="text-input">
                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='phone']/fhir:value/@value"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="input-container">
                                <label>Fax</label> <!-- Fax (ID 70) -->
                                <div class="text-input">
                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='fax']/fhir:value/@value"/>
                                    <xsl:text disable-output-escaping='yes'> </xsl:text>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row g-1">
                        <div class="col-12">
                            <div class="input-container">
                                <label>E-Mail</label> <!-- E-Mail (ID 71) -->
                                <div class="text-input">
                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Organization/fhir:telecom[fhir:system/@value='email']/fhir:value/@value"/>
                                    <xsl:text disable-output-escaping='yes'> </xsl:text>
                                </div>
                            </div>
                        </div>
                    </div>
                    <xsl:variable name="anzahl" select="count(fhir:entry/fhir:resource/fhir:Practitioner)"/>
                    <xsl:choose>
                        <xsl:when test="fhir:entry/fhir:resource/fhir:Composition/fhir:attester and $anzahl>'1'">
                            <h4>verantwortliche Person</h4>
                            <xsl:variable name="attester_id">
                                <xsl:call-template name="getIdFromReference">
                                    <xsl:with-param name="ref" select="fhir:entry/fhir:resource/fhir:Composition/fhir:attester/fhir:party/fhir:reference/@value"/>
                                </xsl:call-template>
                            </xsl:variable>
                            <div class="row g-1">
                                <!-- Zeile 1 -->
                                <div class="col-12">
                                    <div class="input-container">
                                        <label>Name u. Vorname</label> <!-- Titel (ID 22/55), Name (ID 141/142), Vorname (ID 44/53) -->
                                        <div class="text-input">
                                            <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:name/fhir:prefix/@value"/>
                                            <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:name/fhir:given/@value"/>
                                            <xsl:value-of select="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:name/fhir:family/@value"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row g-1">
                                <div class="col-12">
                                    <div class="input-container">
                                        <label>Berufsbezeichnung</label> <!-- (ID 49/58) -->
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:qualification/fhir:code/fhir:text/@value"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row g-1">
                                <div class="col-6"> <!-- Arztnummer / LANR (ID 42a/52a) oder Zahnarztnummer / ZANR (ID 42b/52b)-->
                                    <div class="input-container">
                                        <xsl:choose>
                                            <xsl:when test="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR']/fhir:value/@value">
                                                <label>LANR</label>
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:identifier[fhir:system/@value='https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR']/fhir:value/@value"/>
                                                </div>
                                            </xsl:when>
                                            <xsl:when test="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/zahnarztnummer']/fhir:value/@value">
                                                <label>ZANR</label>
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:identifier[fhir:system/@value='http://fhir.de/sid/kzbv/zahnarztnummer']/fhir:value/@value"/>
                                                </div>
                                            </xsl:when>
                                            <xsl:when test="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:identifier[fhir:system/@value='https://gematik.de/fhir/sid/telematik-id']/fhir:value/@value">
                                                <label>Telematik-ID</label> <!-- (ID 42c/52c) -->
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:identifier[fhir:system/@value='https://gematik.de/fhir/sid/telematik-id']/fhir:value/@value"/>
                                                </div>
                                            </xsl:when>
                                        </xsl:choose>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="input-container">
                                        <label>Qualifikation</label> <!-- (Typ (ID 41/5) -->
                                        <div class="text-input">
                                            <xsl:variable name="arzttyp" select="//fhir:entry/fhir:resource/fhir:Practitioner[fhir:id/@value=$attester_id]/fhir:qualification/fhir:code/fhir:coding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_Qualification_Type']/fhir:code/@value"/>
                                            <xsl:choose>
                                                <xsl:when test="$arzttyp=00">Arzt (</xsl:when>
                                                <xsl:when test="$arzttyp=01">Zahnarzt (</xsl:when>
                                                <xsl:when test="$arzttyp=02">Hebamme (</xsl:when>
                                                <xsl:when test="$arzttyp=03">Arzt in Weiterbildung (</xsl:when>
                                                <xsl:when test="$arzttyp=04">Arzt als Vertreter (</xsl:when>
                                            </xsl:choose>
                                            <xsl:value-of select="($arzttyp)" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </xsl:when>
                    </xsl:choose>
                </div>
            </div>
            <!-- Dritter Container (100% des Platzes) -->
            <div class="intern-container background-container-ges margin-left-min-2 margin-right-min-2 margin-top-min-5">
                <div class="row g-1 width-100">
                    <xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']">
                        <div class="row g-1">
                            <xsl:choose>
                                <xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfalltag']/fhir:valueDate/@value">
                                    <div class="col-2">
                                        <div class="input-container"> <!-- ID 74 -->
                                            <label>Unfalltag</label>
                                            <div class="text-input">
                                                <xsl:call-template name="formatDate">
                                                    <xsl:with-param name="date" select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfalltag']/fhir:valueDate/@value"/>
                                                </xsl:call-template>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:when>
                            </xsl:choose>
                            <xsl:choose>
                                <xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfallbetrieb']/fhir:valueString/@value">
                                    <div class="col-6">
                                        <div class="input-container"> <!-- ID 75 -->
                                            <label>Name des Unfallbetriebs</label>
                                            <div class="text-input">
                                                <xsl:value-of select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Accident']/fhir:extension[@url='Unfallbetrieb']/fhir:valueString/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:when>
                            </xsl:choose>
                        </div>
                    </xsl:if>
                    <xsl:choose>
                        <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_StatusCoPayment']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_FOR_StatusCoPayment']/fhir:code/@value  = '2'">
                            <div class="row g-1">
                                <div class="col">
                                    <div class="input-container"> <!-- Zuzahlungsstatus (ID 77) -->
                                        <label>Zuzahlungsstatus - künstliche Befruchtung</label>
                                        <div class="text-input">
                                            künstliche Befruchtung (Regelung nach § 27a SGB V)
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Prescriber_ID']/fhir:valueIdentifier/fhir:value">
                            <div class="row g-1">
                                <div class="col">
                                    <div class="input-container"> <!-- Verschreiber-ID (ID 155) -->
                                        <label>Verschreiber-ID</label>
                                        <div class="text-input">
                                            <xsl:value-of select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Prescriber_ID']/fhir:valueIdentifier/fhir:value/@value"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </xsl:when>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Kennzeichen']/fhir:valueBoolean[@value='true']">
                            <div class="col-12">
                                <h5>Mehrfachverordnung</h5> <!-- TODO: Zeilenabstand -->
                                <div class="row g-1">
                                    <!--xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Nummerierung']"-->
                                    <div class="col-2">
                                        <div class="input-container"> <!-- Zähler (ID 88) + Nenner (ID 89) -->
                                            <label>Zähler / Nenner</label>
                                            <div class="text-input">
                                                <xsl:value-of select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Nummerierung']/fhir:valueRatio/fhir:numerator/fhir:value/@value"/>
                                                <xsl:text disable-output-escaping='yes'> / </xsl:text>
                                                <xsl:value-of select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Nummerierung']/fhir:valueRatio/fhir:denominator/fhir:value/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/xsl:if-->
                                    <!--xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Zeitraum']"-->
                                    <div class="col-2">
                                        <xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Zeitraum']/fhir:valuePeriod/fhir:start">
                                            <div class="input-container"> <!-- Begin Einloesefrist (ID 90)  -->
                                                <label>Begin Einloesefrist</label>
                                                <div class="text-input">
                                                    <xsl:call-template name="formatDate">
                                                        <xsl:with-param name="date" select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Zeitraum']/fhir:valuePeriod/fhir:start/@value"/>
                                                    </xsl:call-template>
                                                </div>
                                            </div>
                                        </xsl:if>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-container"> <!-- Ende Einloesefrist (ID 91) -->
                                            <label>Ende Einloesefrist</label>
                                            <div class="text-input">
                                                <xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Zeitraum']/fhir:valuePeriod/fhir:end">
                                                    <xsl:call-template name="formatDate">
                                                        <xsl:with-param name="date" select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='Zeitraum']/fhir:valuePeriod/fhir:end/@value"/>
                                                    </xsl:call-template>
                                                </xsl:if>
                                                <xsl:text disable-output-escaping='yes'> </xsl:text>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/xsl:if-->
                                    <!--xsl:if test="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='ID']"-->
                                    <div class="col-6">
                                        <div class="input-container"> <!-- MV-ID 145 -->
                                            <label>ID</label>
                                            <div class="text-input">
                                                <xsl:value-of select="//fhir:MedicationRequest/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Multiple_Prescription']/fhir:extension[@url='ID']/fhir:valueIdentifier/fhir:value/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <!--/xsl:if-->
                                </div>
                            </div>
                        </xsl:when>
                    </xsl:choose>
                    <div class="col-12">
                        <!-- Start Medications -->
                        <xsl:choose>
                            <!-- PZN -Verordnung ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
                            <xsl:when test="//fhir:Medication/fhir:code/fhir:coding/fhir:system[@value='http://fhir.de/CodeSystem/ifa/pzn']">
                                <div class="row g-1">
                                    <div class="col-1">
                                        <div class="checkbox-container vertical-align">
                                            <label>Aut Idem</label> <!-- ID 101 -->
                                            <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                                            <xsl:choose>
                                                <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:substitution/fhir:allowedBoolean/@value = 'false'">
                                                    <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text> <!-- Nein -->
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text> <!-- Ja -->
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="input-container">
                                            <label>Anzahl der verordneten Packungen</label> <!-- Anzahl der verordneten Packungen (ID 113) -->
                                            <div class="text-input">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-8">
                                        <div class="input-container">
                                            <label>Kategorie</label> <!-- Kategorie (ID 81) -->
                                            <xsl:variable name="kategorie" select="fhir:entry/fhir:resource/fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Category']/fhir:code/@value"/>

                                            <xsl:choose>
                                                <xsl:when test="$kategorie=00">
                                                    <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input&#34; readonly/&gt;</xsl:text>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input&#34; style=&#34;font-weight: bold&#34; readonly/&gt;</xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                            <xsl:choose>
                                                <xsl:when test="$kategorie=00">AM oder in die AM-Versorgung nach &#167; 31 SGB V einbezogenes Produkt (</xsl:when>
                                                <xsl:when test="$kategorie=01">BtM (</xsl:when>
                                                <xsl:when test="$kategorie=02">T-Rezept (AMVV &#167; 3a Abs. 1 (Thalidomid o. &#228;.)) (</xsl:when>
                                            </xsl:choose>
                                            <xsl:value-of select="($kategorie)" />
                                            <xsl:text disable-output-escaping='yes'>)&lt;/textarea&gt;</xsl:text>
                                        </div>
                                    </div>
                                </div>
                                <div class="row g-1">
                                    <div class="col-2">
                                        <div class="input-container">
                                            <label>PZN</label> <!-- ID des Produkts (PZN) (ID 115) -->
                                            <div class="text-input" style="font-weight: bold;">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:code/fhir:coding/fhir:code/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-10">
                                        <div class="input-container">
                                            <label>Handelsname</label>
                                            <div class="text-input" style="font-weight: bold;">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:code/fhir:text/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row g-1">
                                    <div class="col-4"> <!-- Darreichungsform Text (ID 103)-->
                                        <div class="input-container">
                                            <label>Darreichungsform</label>
                                            <xsl:variable name="_dform" select="fhir:entry/fhir:resource/fhir:Medication/fhir:form/fhir:coding/fhir:code/@value"/>
                                            <div class="text-input">
                                                <xsl:choose> <!-- S_KBV_DARREICHUNGSFORM  v1.15 Stand: 01.04.2025 -->
                                                    <xsl:when test="$_dform='---'">keine Darreichungsform (</xsl:when>
                                                    <xsl:when test="$_dform='AEO'">Ätherisches Öl (</xsl:when>
                                                    <xsl:when test="$_dform='AMP'">Ampullen (</xsl:when>
                                                    <xsl:when test="$_dform='APA'">Ampullenpaare (</xsl:when>
                                                    <xsl:when test="$_dform='ASN'">Augen- und Nasensalbe (</xsl:when>
                                                    <xsl:when test="$_dform='ASO'">Augen- und Ohrensalbe (</xsl:when>
                                                    <xsl:when test="$_dform='ATO'">Augen- und Ohrentropfen (</xsl:when>
                                                    <xsl:when test="$_dform='ATR'">Augentropfen (</xsl:when>
                                                    <xsl:when test="$_dform='AUB'">Augenbad (</xsl:when>
                                                    <xsl:when test="$_dform='AUC'">Augencreme (</xsl:when>
                                                    <xsl:when test="$_dform='AUG'">Augengel (</xsl:when>
                                                    <xsl:when test="$_dform='AUS'">Augensalbe (</xsl:when>
                                                    <xsl:when test="$_dform='BAD'">Bad (</xsl:when>
                                                    <xsl:when test="$_dform='BAL'">Balsam (</xsl:when>
                                                    <xsl:when test="$_dform='BAN'">Bandage (</xsl:when>
                                                    <xsl:when test="$_dform='BEU'">Beutel (</xsl:when>
                                                    <xsl:when test="$_dform='BIN'">Binden (</xsl:when>
                                                    <xsl:when test="$_dform='BON'">Bonbons (</xsl:when>
                                                    <xsl:when test="$_dform='BPL'">Basisplatte (</xsl:when>
                                                    <xsl:when test="$_dform='BRE'">Brei (</xsl:when>
                                                    <xsl:when test="$_dform='BTA'">Brausetabletten (</xsl:when>
                                                    <xsl:when test="$_dform='CRE'">Creme (</xsl:when>
                                                    <xsl:when test="$_dform='DFL'">Durchstechflaschen (</xsl:when>
                                                    <xsl:when test="$_dform='DIG'">Digitale Gesundheitsanwendungen (</xsl:when>
                                                    <xsl:when test="$_dform='DIL'">Dilution (</xsl:when>
                                                    <xsl:when test="$_dform='DIS'">Depot-Injektionssuspension (</xsl:when>
                                                    <xsl:when test="$_dform='DKA'">Dragees in Kalenderpackung (</xsl:when>
                                                    <xsl:when test="$_dform='DOS'">Dosieraerosol (</xsl:when>
                                                    <xsl:when test="$_dform='DRA'">Dragees (</xsl:when>
                                                    <xsl:when test="$_dform='DRM'">Dragees magensaftresistent (</xsl:when>
                                                    <xsl:when test="$_dform='DSC'">Dosierschaum (</xsl:when>
                                                    <xsl:when test="$_dform='DSS'">Dosierspray (</xsl:when>
                                                    <xsl:when test="$_dform='EDP'">Einzeldosis-Pipetten (</xsl:when>
                                                    <xsl:when test="$_dform='EIN'">Einreibung (</xsl:when>
                                                    <xsl:when test="$_dform='ELE'">Elektroden (</xsl:when>
                                                    <xsl:when test="$_dform='ELI'">Elixier (</xsl:when>
                                                    <xsl:when test="$_dform='EMU'">Emulsion (</xsl:when>
                                                    <xsl:when test="$_dform='ESS'">Essenz (</xsl:when>
                                                    <xsl:when test="$_dform='ESU'">Erwachsenen-Suppositorien (</xsl:when>
                                                    <xsl:when test="$_dform='EXT'">Extrakt (</xsl:when>
                                                    <xsl:when test="$_dform='FBE'">Filterbeutel (</xsl:when>
                                                    <xsl:when test="$_dform='FBW'">Franzbranntwein (</xsl:when>
                                                    <xsl:when test="$_dform='FDA'">Filmdragees (</xsl:when>
                                                    <xsl:when test="$_dform='FER'">Fertigspritzen (</xsl:when>
                                                    <xsl:when test="$_dform='FET'">Fettsalbe (</xsl:when>
                                                    <xsl:when test="$_dform='FLA'">Flasche (</xsl:when>
                                                    <xsl:when test="$_dform='FLE'">Flüssigkeit zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='FLU'">Flüssig (</xsl:when>
                                                    <xsl:when test="$_dform='FMR'">Filmtabletten magensaftresistent (</xsl:when>
                                                    <xsl:when test="$_dform='FOL'">Folie (</xsl:when>
                                                    <xsl:when test="$_dform='FRB'">Beutel mit retardierten Filmtabletten (</xsl:when>
                                                    <xsl:when test="$_dform='FSE'">Flüssigseife (</xsl:when>
                                                    <xsl:when test="$_dform='FTA'">Filmtabletten (</xsl:when>
                                                    <xsl:when test="$_dform='GEK'">Granulat zur Entnahme aus Kapseln (</xsl:when>
                                                    <xsl:when test="$_dform='GEL'">Gel (</xsl:when>
                                                    <xsl:when test="$_dform='GLI'">Gas und Lösungsmittel zur Herstellung einer Injektions-/Infusionsdispersion (</xsl:when>
                                                    <xsl:when test="$_dform='GLO'">Globuli (</xsl:when>
                                                    <xsl:when test="$_dform='GMR'">Magensaftresistentes Granulat (</xsl:when>
                                                    <xsl:when test="$_dform='GPA'">Gelplatte (</xsl:when>
                                                    <xsl:when test="$_dform='GRA'">Granulat (</xsl:when>
                                                    <xsl:when test="$_dform='GSE'">Granulat zur Herstellung einer Suspension zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='GUL'">Gurgellösung (</xsl:when>
                                                    <xsl:when test="$_dform='HAS'">Handschuhe (</xsl:when>
                                                    <xsl:when test="$_dform='HKM'">Magensaftresistente Hartkapseln (</xsl:when>
                                                    <xsl:when test="$_dform='HKP'">Hartkapseln (</xsl:when>
                                                    <xsl:when test="$_dform='HPI'">Hartkapseln mit Pulver zur Inhalation (</xsl:when>
                                                    <xsl:when test="$_dform='HVW'">Hartkapseln mit veränderter Wirkstofffreisetzung (</xsl:when>
                                                    <xsl:when test="$_dform='IFA'">Infusionsampullen (</xsl:when>
                                                    <xsl:when test="$_dform='IFB'">Infusionsbeutel (</xsl:when>
                                                    <xsl:when test="$_dform='IFD'">Infusionsdispersion (</xsl:when>
                                                    <xsl:when test="$_dform='IFE'">Injektionslösung in einer Fertigspritze (</xsl:when>
                                                    <xsl:when test="$_dform='IFF'">Infusionsflaschen (</xsl:when>
                                                    <xsl:when test="$_dform='IFK'">Infusionslösungskonzentrat (</xsl:when>
                                                    <xsl:when test="$_dform='IFL'">Injektionsflaschen (</xsl:when>
                                                    <xsl:when test="$_dform='IFS'">Infusionsset (</xsl:when>
                                                    <xsl:when test="$_dform='IHA'">Inhalationsampullen (</xsl:when>
                                                    <xsl:when test="$_dform='IHP'">Inhalationspulver (</xsl:when>
                                                    <xsl:when test="$_dform='IID'">Injektions- und Infusionsdispersion (</xsl:when>
                                                    <xsl:when test="$_dform='IIE'">Injektions- oder Infusionslösung oder Lösung zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='IIL'">Injektions-, Infusionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='IIM'">Injektionslösung zur intramuskulären Anwendung (</xsl:when>
                                                    <xsl:when test="$_dform='IJD'">Injektionsdispersion (</xsl:when>
                                                    <xsl:when test="$_dform='IKA'">Inhalationskapseln (</xsl:when>
                                                    <xsl:when test="$_dform='ILO'">Injektionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='IMP'">Implantat (</xsl:when>
                                                    <xsl:when test="$_dform='INF'">Infusionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='INH'">Inhalat (</xsl:when>
                                                    <xsl:when test="$_dform='INI'">Injektions-, Infusionsflaschen (</xsl:when>
                                                    <xsl:when test="$_dform='INL'">Inhalationslösung (</xsl:when>
                                                    <xsl:when test="$_dform='INS'">Instant-Tee (</xsl:when>
                                                    <xsl:when test="$_dform='IST'">Instillation (</xsl:when>
                                                    <xsl:when test="$_dform='ISU'">Injektionssuspension (</xsl:when>
                                                    <xsl:when test="$_dform='IUP'">Intrauterinpessar (</xsl:when>
                                                    <xsl:when test="$_dform='KAN'">Kanülen (</xsl:when>
                                                    <xsl:when test="$_dform='KAP'">Kapseln (</xsl:when>
                                                    <xsl:when test="$_dform='KAT'">Katheter (</xsl:when>
                                                    <xsl:when test="$_dform='KDA'">Kaudragees (</xsl:when>
                                                    <xsl:when test="$_dform='KEG'">Kegel (</xsl:when>
                                                    <xsl:when test="$_dform='KER'">Kerne (</xsl:when>
                                                    <xsl:when test="$_dform='KGU'">Kaugummi (</xsl:when>
                                                    <xsl:when test="$_dform='KID'">Konzentrat zur Herstellung einer Infusionsdispersion (</xsl:when>
                                                    <xsl:when test="$_dform='KII'">Konzentrat zur Herstellung einer Injektions- oder Infusionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='KKS'">Kleinkinder-Suppositorien (</xsl:when>
                                                    <xsl:when test="$_dform='KLI'">Klistiere (</xsl:when>
                                                    <xsl:when test="$_dform='KLT'">Klistier-Tabletten (</xsl:when>
                                                    <xsl:when test="$_dform='KMP'">Hartkapseln mit magensaftresistent überzogenen Pellets (</xsl:when>
                                                    <xsl:when test="$_dform='KMR'">Kapseln magensaftresistent (</xsl:when>
                                                    <xsl:when test="$_dform='KOD'">Kondome (</xsl:when>
                                                    <xsl:when test="$_dform='KOM'">Kompressen (</xsl:when>
                                                    <xsl:when test="$_dform='KON'">Konzentrat (</xsl:when>
                                                    <xsl:when test="$_dform='KPG'">Kombipackung (</xsl:when>
                                                    <xsl:when test="$_dform='KRI'">Kristallsuspension (</xsl:when>
                                                    <xsl:when test="$_dform='KSS'">Kinder- und Säuglings-Suppositorien (</xsl:when>
                                                    <xsl:when test="$_dform='KSU'">Kinder-Suppositorien (</xsl:when>
                                                    <xsl:when test="$_dform='KTA'">Kautabletten (</xsl:when>
                                                    <xsl:when test="$_dform='LAN'">Lanzetten (</xsl:when>
                                                    <xsl:when test="$_dform='LII'">Lösung zur Injektion, Infusion und Inhalation (</xsl:when>
                                                    <xsl:when test="$_dform='LIQ'">Liquidum (</xsl:when>
                                                    <xsl:when test="$_dform='LIV'">Lösung zur intravesikalen Anwendung (</xsl:when>
                                                    <xsl:when test="$_dform='LOE'">Lösung (</xsl:when>
                                                    <xsl:when test="$_dform='LOT'">Lotion (</xsl:when>
                                                    <xsl:when test="$_dform='LOV'">Lösung für einen Vernebler (</xsl:when>
                                                    <xsl:when test="$_dform='LSE'">Lösung zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='LTA'">Lacktabletten (</xsl:when>
                                                    <xsl:when test="$_dform='LUP'">Lutschpastillen (</xsl:when>
                                                    <xsl:when test="$_dform='LUT'">Lutschtabletten (</xsl:when>
                                                    <xsl:when test="$_dform='LYE'">Lyophilisat zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='LYO'">Lyophilisat zur Herstellung einer Infusionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='MIL'">Milch (</xsl:when>
                                                    <xsl:when test="$_dform='MIS'">Mischung (</xsl:when>
                                                    <xsl:when test="$_dform='MIX'">Mixtur (</xsl:when>
                                                    <xsl:when test="$_dform='MRG'">Magensaftresistentes Retardgranulat (</xsl:when>
                                                    <xsl:when test="$_dform='MRP'">Magensaftresistente Pellets (</xsl:when>
                                                    <xsl:when test="$_dform='MTA'">Manteltabletten (</xsl:when>
                                                    <xsl:when test="$_dform='MUW'">Mundwasser (</xsl:when>
                                                    <xsl:when test="$_dform='NAG'">Nasengel (</xsl:when>
                                                    <xsl:when test="$_dform='NAO'">Nasenöl (</xsl:when>
                                                    <xsl:when test="$_dform='NAS'">Nasenspray (</xsl:when>
                                                    <xsl:when test="$_dform='NAW'">Wirkstoffhaltiger Nagellack (</xsl:when>
                                                    <xsl:when test="$_dform='NDS'">Nasendosierspray (</xsl:when>
                                                    <xsl:when test="$_dform='NSA'">Nasensalbe (</xsl:when>
                                                    <xsl:when test="$_dform='NTR'">Nasentropfen (</xsl:when>
                                                    <xsl:when test="$_dform='OCU'">Ocusert (</xsl:when>
                                                    <xsl:when test="$_dform='OEL'">Öl (</xsl:when>
                                                    <xsl:when test="$_dform='OHT'">Ohrentropfen (</xsl:when>
                                                    <xsl:when test="$_dform='OVU'">Ovula (</xsl:when>
                                                    <xsl:when test="$_dform='PAM'">Packungsmasse (</xsl:when>
                                                    <xsl:when test="$_dform='PAS'">Pastillen (</xsl:when>
                                                    <xsl:when test="$_dform='PEL'">Pellets (</xsl:when>
                                                    <xsl:when test="$_dform='PEN'">Injektionslösung in einem Fertigpen (</xsl:when>
                                                    <xsl:when test="$_dform='PER'">Perlen (</xsl:when>
                                                    <xsl:when test="$_dform='PFL'">Pflaster (</xsl:when>
                                                    <xsl:when test="$_dform='PFT'">Pflaster transdermal (</xsl:when>
                                                    <xsl:when test="$_dform='PHI'">Pulver zur Herstellung einer Injektions-, Infusions- oder Inhalationslösung (</xsl:when>
                                                    <xsl:when test="$_dform='PHV'">Pulver zur Herstellung einer Injektions- bzw. Infusionslösung oder Pulver und Lösungsmittel zur Herstellung einer Lösung zur intravesikalen Anwendung (</xsl:when>
                                                    <xsl:when test="$_dform='PIE'">Pulver für ein Konzentrat zur Herstellung einer Infusionslösung, Pulver zur Herstellung einer Lösung zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='PIF'">Pulver zur Herstellung einer Infusionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='PII'">Pulver zur Herstellung einer Injektions- oder Infusionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='PIJ'">Pulver zur Herstellung einer Injektionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='PIK'">Pulver zur Herstellung eines Infusionslösungskonzentrates (</xsl:when>
                                                    <xsl:when test="$_dform='PIS'">Pulver zur Herstellung einer Infusionssuspension (</xsl:when>
                                                    <xsl:when test="$_dform='PIV'">Pulver zur Herstellung einer Injektions- bzw. Infusionslösung oder einer Lösung zur intravesikalen Anwendung (</xsl:when>
                                                    <xsl:when test="$_dform='PKI'">Pulver für ein Konzentrat zur Herstellung einer Infusionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='PLD'">Pulver und Lösungsmittel zur Herstellung einer Depot-Injektionssuspension (</xsl:when>
                                                    <xsl:when test="$_dform='PLE'">Pulver zur Herstellung einer Lösung zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='PLF'">Pulver und Lösungsmittel zur Herstellung einer Infusionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='PLG'">Perlongetten (</xsl:when>
                                                    <xsl:when test="$_dform='PLH'">Pulver und Lösungsmittel zur Herstellung einer Injektions- bzw. Infusionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='PLI'">Pulver und Lösungsmittel zur Herstellung einer Injektionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='PLK'">Pulver und Lösungsmittel für ein Konzentrat zur Herstellung einer Infusionslösung (</xsl:when>
                                                    <xsl:when test="$_dform='PLS'">Pulver und Lösungsmittel zur Herstellung einer Injektionssuspension (</xsl:when>
                                                    <xsl:when test="$_dform='PLV'">Pulver und Lösungsmittel zur Herstellung einer Lösung zur intravesikalen Anwendung (</xsl:when>
                                                    <xsl:when test="$_dform='PPL'">Pumplösung (</xsl:when>
                                                    <xsl:when test="$_dform='PRS'">Presslinge (</xsl:when>
                                                    <xsl:when test="$_dform='PSE'">Pulver zur Herstellung einer Suspension zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='PST'">Paste (</xsl:when>
                                                    <xsl:when test="$_dform='PUD'">Puder (</xsl:when>
                                                    <xsl:when test="$_dform='PUE'">Pulver zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='PUL'">Pulver (</xsl:when>
                                                    <xsl:when test="$_dform='RED'">Retard-Dragees (</xsl:when>
                                                    <xsl:when test="$_dform='REK'">Retard-Kapseln (</xsl:when>
                                                    <xsl:when test="$_dform='RET'">Retard-Tabletten (</xsl:when>
                                                    <xsl:when test="$_dform='RGR'">Retard-Granulat (</xsl:when>
                                                    <xsl:when test="$_dform='RKA'">Rektalkapseln (</xsl:when>
                                                    <xsl:when test="$_dform='RMS'">Retardmikrokapseln und Suspensionsmittel (</xsl:when>
                                                    <xsl:when test="$_dform='RSC'">Rektalschaum (</xsl:when>
                                                    <xsl:when test="$_dform='RSU'">Rektalsuspension (</xsl:when>
                                                    <xsl:when test="$_dform='RUT'">Retard-überzogene Tabletten (</xsl:when>
                                                    <xsl:when test="$_dform='SAF'">Saft (</xsl:when>
                                                    <xsl:when test="$_dform='SAL'">Salbe (</xsl:when>
                                                    <xsl:when test="$_dform='SAM'">Salbe zur Anwendung in der Mundhöhle (</xsl:when>
                                                    <xsl:when test="$_dform='SCH'">Schaum (</xsl:when>
                                                    <xsl:when test="$_dform='SEI'">Seife (</xsl:when>
                                                    <xsl:when test="$_dform='SHA'">Shampoo (</xsl:when>
                                                    <xsl:when test="$_dform='SIR'">Sirup (</xsl:when>
                                                    <xsl:when test="$_dform='SLZ'">Salz (</xsl:when>
                                                    <xsl:when test="$_dform='SMF'">Schmelzfilm (</xsl:when>
                                                    <xsl:when test="$_dform='SMT'">Schmelztabletten (</xsl:when>
                                                    <xsl:when test="$_dform='SMU'">Suppositorien mit Mulleinlage (</xsl:when>
                                                    <xsl:when test="$_dform='SPA'">Spritzampullen (</xsl:when>
                                                    <xsl:when test="$_dform='SPF'">Sprühflasche (</xsl:when>
                                                    <xsl:when test="$_dform='SPL'">Spüllösung (</xsl:when>
                                                    <xsl:when test="$_dform='SPR'">Spray (</xsl:when>
                                                    <xsl:when test="$_dform='SPT'">Transdermales Spray (</xsl:when>
                                                    <xsl:when test="$_dform='SRI'">Spritzen (</xsl:when>
                                                    <xsl:when test="$_dform='SSU'">Säuglings-Suppositorien (</xsl:when>
                                                    <xsl:when test="$_dform='STA'">Stechampullen (</xsl:when>
                                                    <xsl:when test="$_dform='STB'">Stäbchen (</xsl:when>
                                                    <xsl:when test="$_dform='STI'">Stifte (</xsl:when>
                                                    <xsl:when test="$_dform='STR'">Streifen (</xsl:when>
                                                    <xsl:when test="$_dform='SUB'">Substanz (</xsl:when>
                                                    <xsl:when test="$_dform='SUE'">Suspension zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='SUI'">Suspension zur Implantation (</xsl:when>
                                                    <xsl:when test="$_dform='SUL'">Sublingualspray, Lösung (</xsl:when>
                                                    <xsl:when test="$_dform='SUP'">Suppositorien (</xsl:when>
                                                    <xsl:when test="$_dform='SUS'">Suspension (</xsl:when>
                                                    <xsl:when test="$_dform='SUT'">Sublingualtabletten (</xsl:when>
                                                    <xsl:when test="$_dform='SUV'">Suspension für einen Vernebler (</xsl:when>
                                                    <xsl:when test="$_dform='SWA'">Schwämme (</xsl:when>
                                                    <xsl:when test="$_dform='TAB'">Tabletten (</xsl:when>
                                                    <xsl:when test="$_dform='TAE'">Täfelchen (</xsl:when>
                                                    <xsl:when test="$_dform='TAM'">Trockenampullen (</xsl:when>
                                                    <xsl:when test="$_dform='TEE'">Tee (</xsl:when>
                                                    <xsl:when test="$_dform='TEI'">Tropfen zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='TES'">Test (</xsl:when>
                                                    <xsl:when test="$_dform='TIN'">Tinktur (</xsl:when>
                                                    <xsl:when test="$_dform='TKA'">Tabletten in Kalenderpackung (</xsl:when>
                                                    <xsl:when test="$_dform='TLE'">Tablette zur Herstellung einer Lösung zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='TMR'">Tabletten magensaftresistent (</xsl:when>
                                                    <xsl:when test="$_dform='TON'">Tonikum (</xsl:when>
                                                    <xsl:when test="$_dform='TPN'">Tampon (</xsl:when>
                                                    <xsl:when test="$_dform='TPO'">Tamponaden (</xsl:when>
                                                    <xsl:when test="$_dform='TRA'">Trinkampullen (</xsl:when>
                                                    <xsl:when test="$_dform='TRI'">Trituration (</xsl:when>
                                                    <xsl:when test="$_dform='TRO'">Tropfen (</xsl:when>
                                                    <xsl:when test="$_dform='TRS'">Trockensubstanz mit Lösungsmittel (</xsl:when>
                                                    <xsl:when test="$_dform='TRT'">Trinktabletten (</xsl:when>
                                                    <xsl:when test="$_dform='TSA'">Trockensaft (</xsl:when>
                                                    <xsl:when test="$_dform='TSD'">Tabletten zur Herstellung einer Suspension zum Einnehmen für einen Dosierspender (</xsl:when>
                                                    <xsl:when test="$_dform='TSE'">Tablette zur Herstellung einer Suspension zum Einnehmen (</xsl:when>
                                                    <xsl:when test="$_dform='TSS'">Trockensubstanz ohne Lösungsmittel (</xsl:when>
                                                    <xsl:when test="$_dform='TST'">Teststäbchen (</xsl:when>
                                                    <xsl:when test="$_dform='TSY'">Transdermales System (</xsl:when>
                                                    <xsl:when test="$_dform='TTR'">Teststreifen (</xsl:when>
                                                    <xsl:when test="$_dform='TUB'">Tube (</xsl:when>
                                                    <xsl:when test="$_dform='TUE'">Tücher (</xsl:when>
                                                    <xsl:when test="$_dform='TUP'">Tupfer (</xsl:when>
                                                    <xsl:when test="$_dform='TVW'">Tablette mit veränderter Wirkstofffreisetzung (</xsl:when>
                                                    <xsl:when test="$_dform='UTA'">Überzogene Tabletten (</xsl:when>
                                                    <xsl:when test="$_dform='VAL'">Vaginallösung (</xsl:when>
                                                    <xsl:when test="$_dform='VAR'">Vaginalring (</xsl:when>
                                                    <xsl:when test="$_dform='VCR'">Vaginalcreme (</xsl:when>
                                                    <xsl:when test="$_dform='VER'">Verband (</xsl:when>
                                                    <xsl:when test="$_dform='VGE'">Vaginalgel (</xsl:when>
                                                    <xsl:when test="$_dform='VKA'">Vaginalkapseln (</xsl:when>
                                                    <xsl:when test="$_dform='VLI'">Vlies (</xsl:when>
                                                    <xsl:when test="$_dform='VOV'">Vaginalovula (</xsl:when>
                                                    <xsl:when test="$_dform='VST'">Vaginalstäbchen (</xsl:when>
                                                    <xsl:when test="$_dform='VSU'">Vaginalsuppositorien (</xsl:when>
                                                    <xsl:when test="$_dform='VTA'">Vaginaltabletten (</xsl:when>
                                                    <xsl:when test="$_dform='WAT'">Watte (</xsl:when>
                                                    <xsl:when test="$_dform='WGA'">Wundgaze (</xsl:when>
                                                    <xsl:when test="$_dform='WKA'">Weichkapseln (</xsl:when>
                                                    <xsl:when test="$_dform='WKM'">Magensaftresistente Weichkapseln (</xsl:when>
                                                    <xsl:when test="$_dform='WUE'">Würfel (</xsl:when>
                                                    <xsl:when test="$_dform='XDG'">Duschgel (</xsl:when>
                                                    <xsl:when test="$_dform='XDS'">Deo-Spray (</xsl:when>
                                                    <xsl:when test="$_dform='XFE'">Festiger (</xsl:when>
                                                    <xsl:when test="$_dform='XGM'">Gesichtsmaske (</xsl:when>
                                                    <xsl:when test="$_dform='XHA'">Halsband (</xsl:when>
                                                    <xsl:when test="$_dform='XHS'">Haarspülung (</xsl:when>
                                                    <xsl:when test="$_dform='XNC'">Nachtcreme (</xsl:when>
                                                    <xsl:when test="$_dform='XPK'">Körperpflege (</xsl:when>
                                                    <xsl:when test="$_dform='XTC'">Tagescreme (</xsl:when>
                                                    <xsl:when test="$_dform='ZAM'">Zylinderampullen (</xsl:when>
                                                    <xsl:when test="$_dform='ZBU'">Zahnbürste (</xsl:when>
                                                    <xsl:when test="$_dform='ZCR'">Zahncreme (</xsl:when>
                                                    <xsl:when test="$_dform='ZGE'">Zahngel (</xsl:when>
                                                    <xsl:when test="$_dform='ZKA'">Zerbeisskapseln (</xsl:when>
                                                    <xsl:when test="$_dform='ZPA'">Zahnpasta (</xsl:when>
                                                    <xsl:otherwise>
                                                        unbekannt (
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                                <xsl:value-of select="($_dform)"/>
                                                <xsl:text disable-output-escaping='yes'>)</xsl:text>
                                            </div>
                                            <!-- TODO: Anzeige Display-Value? form.coding:kbvDarreichungsform.display -->
                                            <!--xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:form/fhir:coding/fhir:code/@value"/-->
                                        </div>
                                    </div>
                                    <!--Packungsgroesse nach N-Bezeichnung (ID 110) -> wenn angegeben -->
                                    <xsl:if test="fhir:entry/fhir:resource/fhir:Medication/fhir:extension[@url='http://fhir.de/StructureDefinition/normgroesse']/fhir:valueCode['https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_NORMGROESSE']">
                                        <div class="col-4">
                                            <div class="input-container">
                                                <label>Packungsgroesse nach N-Bezeichnung</label> <!-- Anzahl der verordneten Packungen (ID 113) -->
                                                <div class="text-input">
                                                    <xsl:variable name="npack" select="fhir:entry/fhir:resource/fhir:Medication/fhir:extension[@url='http://fhir.de/StructureDefinition/normgroesse']/fhir:valueCode['https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_NORMGROESSE']/@value"/>
                                                    <xsl:choose>
                                                        <xsl:when test="$npack='KA'">Keine Angabe (</xsl:when>
                                                        <xsl:when test="$npack='KTP'">Keine therapiegerechte Packungsgrösse (</xsl:when>
                                                        <xsl:when test="$npack='N1'">Normgrösse 1 (</xsl:when>
                                                        <xsl:when test="$npack='N2'">Normgrösse 2 (</xsl:when>
                                                        <xsl:when test="$npack='N3'">Normgrösse 3 (</xsl:when>
                                                        <xsl:when test="$npack='NB'">Nicht betroffen (</xsl:when>
                                                        <xsl:when test="$npack='Sonstiges'">Sonstiges (</xsl:when>
                                                    </xsl:choose>
                                                    <xsl:value-of select="($npack)"/>
                                                    <xsl:text disable-output-escaping='yes'>)</xsl:text>
                                                </div>
                                            </div>
                                        </div>
                                    </xsl:if>
                                    <!--Packungsgroesse nach abgeteilter MengeDosieranweisung (ID 111) + Einheit (ID 112) -->
                                    <xsl:if test="fhir:entry/fhir:resource/fhir:Medication/fhir:amount">
                                        <div class="col-4">
                                            <div class="input-container">
                                                <label>Packungsgroesse nach abgeteilter Menge</label>
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:amount/fhir:numerator/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize']/fhir:valueString/@value"/>
                                                    <xsl:text disable-output-escaping='yes'> </xsl:text>
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:amount/fhir:numerator/fhir:unit/@value"/>
                                                </div>
                                            </div>
                                        </div>
                                    </xsl:if>
                                </div>
                                <xsl:for-each select="fhir:entry/fhir:resource/fhir:Medication/fhir:ingredient"> <!-- ab Version 1.3 Angabe des Wirkstoffs -->
                                    <div class="row g-1">
                                        <div class="col-1">
                                            <div class="input-container">
                                                <label>Position</label>
                                                <div class="text-input">
                                                    <xsl:number format="1 " /><xsl:value-of select="." />
                                                </div>
                                            </div>
                                        </div>
                                        <xsl:if test="fhir:itemCodeableConcept/fhir:coding/fhir:code/@value"> <!-- Wirkstoffnummer (ID 118) -->
                                            <div class="col-1">
                                                <div class="input-container">
                                                    <label>ASK-Nr</label>
                                                    <div class="text-input" style="font-weight: bold;">
                                                        <xsl:value-of select="fhir:itemCodeableConcept/fhir:coding/fhir:code/@value"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:if>
                                        <div class="col-6">
                                            <div class="input-container">
                                                <label>Wirkstoffname</label> <!-- 80 Zeichen TODO: Textlänge-->
                                                <div class="text-input" style="font-weight: bold;">
                                                    <xsl:value-of select="fhir:itemCodeableConcept/fhir:text/@value"/> <!-- Wirkstoffname (ID 119) -->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="input-container">
                                                <label>Wirkstärke</label>
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:strength/fhir:numerator/fhir:value/@value"/> <!-- Wirkstaerke (ID 159a) -->
                                                    <xsl:text disable-output-escaping='yes'> </xsl:text>
                                                    <xsl:value-of select="fhir:strength/fhir:numerator/fhir:unit/@value"/> <!-- Wirkstaerkeneinheit (ID 159b) -->
                                                    <xsl:text disable-output-escaping='yes'> / </xsl:text>
                                                    <xsl:value-of select="fhir:strength/fhir:denominator/fhir:value/@value"/> <!-- Wirkstaerke (ID 159c) -->
                                                    <xsl:text disable-output-escaping='yes'> </xsl:text>
                                                    <xsl:value-of select="fhir:strength/fhir:denominator/fhir:unit/@value"/> <!-- Wirkstaerkeneinheit (ID 159d) -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </xsl:when>
                            <!-- Wirkstoff -Verordnung ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  -->
                            <xsl:when test="//fhir:Medication/fhir:code/fhir:coding/fhir:system[@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Type']/following-sibling::fhir:code[@value='wirkstoff']">
                                <div class="row g-1">
                                    <div class="col-1">
                                        <div class="checkbox-container vertical-align">
                                            <label>Aut Idem</label> <!-- ID 101 -->
                                            <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                                            <xsl:choose>
                                                <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:substitution/fhir:allowedBoolean/@value = 'false'">
                                                    <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text> <!-- Nein -->
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text> <!-- Ja -->
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="input-container">
                                            <label>Anzahl der verordneten Packungen</label> <!-- Anzahl der verordneten Packungen (ID 113) -->
                                            <div class="text-input">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-8">
                                        <div class="input-container">
                                            <label>Kategorie</label> <!-- Kategorie (ID 81) -->
                                            <xsl:variable name="kategorie" select="fhir:entry/fhir:resource/fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Category']/fhir:code/@value"/>

                                            <xsl:choose>
                                                <xsl:when test="$kategorie=00">
                                                    <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input&#34; readonly/&gt;</xsl:text>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input&#34; style=&#34;font-weight: bold&#34; readonly/&gt;</xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                            <xsl:choose>
                                                <xsl:when test="$kategorie=00">AM oder in die AM-Versorgung nach &#167; 31 SGB V einbezogenes Produkt (</xsl:when>
                                                <xsl:when test="$kategorie=01">BtM (</xsl:when>
                                                <xsl:when test="$kategorie=02">T-Rezept (AMVV &#167; 3a Abs. 1 (Thalidomid o. &#228;.)) (</xsl:when>
                                            </xsl:choose>
                                            <xsl:value-of select="($kategorie)" />
                                            <xsl:text disable-output-escaping='yes'>)&lt;/textarea&gt;</xsl:text>
                                        </div>
                                    </div>
                                </div>
                                <xsl:variable name="anzahl" select="count(fhir:entry/fhir:resource/fhir:Medication/fhir:ingredient)"/>
                                <xsl:for-each select="fhir:entry/fhir:resource/fhir:Medication/fhir:ingredient">
                                    <div class="row g-1">
                                        <div class="col-1">
                                            <div class="input-container">
                                                <label>Position</label>
                                                <div class="text-input">
                                                    <!-- /* TODO: Anzahl / Gesamt */ -->
                                                    <!--xsl:variable name="anzahl2" select="."/-->
                                                    <!--xsl:value-of select="($anzahl2) / ($anzahl)"/-->
                                                    <xsl:number format="1 " /><xsl:value-of select="." />
                                                </div>
                                            </div>
                                        </div>
                                        <xsl:if test="fhir:itemCodeableConcept/fhir:coding/fhir:code/@value"> <!-- Wirkstoffnummer (ID 118) -->
                                            <div class="col-1">
                                                <div class="input-container">
                                                    <label>ASK-Nr</label>
                                                    <div class="text-input" style="font-weight: bold;">
                                                        <xsl:value-of select="fhir:itemCodeableConcept/fhir:coding/fhir:code/@value"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:if>
                                        <div class="col-6">
                                            <div class="input-container">
                                                <label>Wirkstoffname</label> <!-- 80 Zeichen TODO: Textlänge-->
                                                <div class="text-input" style="font-weight: bold;">
                                                    <xsl:value-of select="fhir:itemCodeableConcept/fhir:text/@value"/> <!-- Wirkstoffname (ID 119) -->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="input-container">
                                                <label>Wirkstärke</label>
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:strength/fhir:numerator/fhir:value/@value"/> <!-- Wirkstaerke (ID 120a) -->
                                                    <xsl:text disable-output-escaping='yes'> </xsl:text>
                                                    <xsl:value-of select="fhir:strength/fhir:numerator/fhir:unit/@value"/> <!-- Wirkstaerkeneinheit (ID 120b) -->

                                                    <xsl:if test="fhir:strength/fhir:denominator/fhir:unit/@value"> <!-- ab Version 1.3 -->
                                                        <xsl:text disable-output-escaping='yes'> / </xsl:text>
                                                        <xsl:value-of select="fhir:strength/fhir:denominator/fhir:value/@value"/> <!-- Wirkstaerke (ID 120c) -->
                                                        <xsl:text disable-output-escaping='yes'> </xsl:text>
                                                        <xsl:value-of select="fhir:strength/fhir:denominator/fhir:unit/@value"/> <!-- Wirkstaerkeneinheit (ID 120d) -->
                                                    </xsl:if>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                                <div class="row g-1">
                                    <div class="col-4">
                                        <div class="input-container">
                                            <label>Darreichungsform</label> <!-- Darreichungsform Text (ID 104)  => 30 Zeichen -->
                                            <div class="text-input">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:form/fhir:text/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Packungsgroesse nach N-Bezeichnung (ID 110) -> wenn angegeben -->
                                    <xsl:if test="fhir:entry/fhir:resource/fhir:Medication/fhir:extension[@url='http://fhir.de/StructureDefinition/normgroesse']/fhir:valueCode['https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_NORMGROESSE']">
                                        <div class="col-4">
                                            <div class="input-container">
                                                <label>Packungsgroesse nach N-Bezeichnung</label> <!-- Anzahl der verordneten Packungen (ID 113) -->
                                                <div class="text-input">
                                                    <xsl:variable name="npack" select="fhir:entry/fhir:resource/fhir:Medication/fhir:extension[@url='http://fhir.de/StructureDefinition/normgroesse']/fhir:valueCode['https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_NORMGROESSE']/@value"/>
                                                    <xsl:choose>
                                                        <xsl:when test="$npack='KA'">Keine Angabe (</xsl:when>
                                                        <xsl:when test="$npack='KTP'">Keine therapiegerechte Packungsgrösse (</xsl:when>
                                                        <xsl:when test="$npack='N1'">Normgrösse (</xsl:when>
                                                        <xsl:when test="$npack='N2'">Normgrösse (</xsl:when>
                                                        <xsl:when test="$npack='N3'">Normgrösse (</xsl:when>
                                                        <xsl:when test="$npack='NB'">Nicht betroffen (</xsl:when>
                                                        <xsl:when test="$npack='Sonstiges'">Sonstiges (</xsl:when>
                                                    </xsl:choose>
                                                    <xsl:value-of select="($npack)"/>)
                                                </div>
                                            </div>
                                        </div>
                                    </xsl:if>
                                    <!--Packungsgroesse nach abgeteilter MengeDosieranweisung (ID 111) + Einheit (ID 112) -->
                                    <xsl:if test="fhir:entry/fhir:resource/fhir:Medication/fhir:amount">
                                        <div class="col-4">
                                            <div class="input-container">
                                                <label>Packungsgroesse nach abgeteilter Menge</label>
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:amount/fhir:numerator/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize']/fhir:valueString/@value"/>
                                                    <xsl:text disable-output-escaping='yes'> </xsl:text>
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:amount/fhir:numerator/fhir:unit/@value"/>
                                                </div>
                                            </div>
                                        </div>
                                    </xsl:if>
                                </div>
                            </xsl:when>
                            <!-- Freitext Verordnung ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
                            <xsl:when test="//fhir:Medication/fhir:code/fhir:coding/fhir:system[@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Type']/following-sibling::fhir:code[@value='freitext']">
                                <div class="row g-1">
                                    <div class="col-1">
                                        <div class="checkbox-container vertical-align">
                                            <label>Aut Idem</label> <!-- ID 101 -->
                                            <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                                            <xsl:choose>
                                                <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:substitution/fhir:allowedBoolean/@value = 'false'">
                                                    <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text> <!-- Nein -->
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text> <!-- Ja -->
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="input-container">
                                            <label>Anzahl der verordneten Packungen</label> <!-- Anzahl der verordneten Packungen (ID 113) -->
                                            <div class="text-input">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-8">
                                        <div class="input-container">
                                            <label>Kategorie</label> <!-- Kategorie (ID 81) -->
                                            <xsl:variable name="kategorie" select="fhir:entry/fhir:resource/fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Category']/fhir:code/@value"/>

                                            <xsl:choose>
                                                <xsl:when test="$kategorie=00">
                                                    <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input&#34; readonly/&gt;</xsl:text>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input&#34; style=&#34;font-weight: bold&#34; readonly/&gt;</xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                            <xsl:choose>
                                                <xsl:when test="$kategorie=00">AM oder in die AM-Versorgung nach &#167; 31 SGB V einbezogenes Produkt (</xsl:when>
                                                <xsl:when test="$kategorie=01">BtM (</xsl:when>
                                                <xsl:when test="$kategorie=02">T-Rezept (AMVV &#167; 3a Abs. 1 (Thalidomid o. &#228;.)) (</xsl:when>
                                            </xsl:choose>
                                            <xsl:value-of select="($kategorie)" />
                                            <xsl:text disable-output-escaping='yes'>)&lt;/textarea&gt;</xsl:text>
                                        </div>
                                    </div>
                                </div>
                                <div class="row g-1">
                                    <div class="col-12">
                                        <div class="input-container">
                                            <label>Freitext-Verordnung</label>
                                            <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input height-15mm&#34; readonly/&gt;</xsl:text>
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:code/fhir:text/@value"/>
                                            <xsl:text disable-output-escaping='yes'>&lt;/textarea&gt;</xsl:text>
                                        </div>
                                    </div>
                                </div>
                                <xsl:if test="fhir:entry/fhir:resource/fhir:Medication/fhir:form">
                                    <div class="row g-1">
                                        <div class="col-12">
                                            <div class="input-container">
                                                <label>Darreichungsform</label> <!-- Darreichungsform Text (ID 104) => 30 Zeichen -->
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:form/fhir:text/@value"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:if>
                            </xsl:when>
                            <!-- Rezeptur Verordnung ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
                            <xsl:when test="//fhir:Medication/fhir:code/fhir:coding/fhir:system[@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Type']/following-sibling::fhir:code[@value='rezeptur']">
                                <div class="row g-1">
                                    <div class="col-1">
                                        <div class="checkbox-container vertical-align">
                                            <label>Aut Idem</label> <!-- ID 101 -->
                                            <xsl:text disable-output-escaping='yes'>&lt;input type=&#34;checkbox&#34; class=&#34;chckbox&#34; disabled="disabled" name=&#34;terms&#34;</xsl:text>
                                            <xsl:choose>
                                                <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:substitution/fhir:allowedBoolean/@value = 'false'">
                                                    <xsl:text disable-output-escaping='yes'>checked/&gt;</xsl:text> <!-- Nein -->
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text disable-output-escaping='yes'>/&gt;</xsl:text> <!-- Ja -->
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="input-container">
                                            <label>Anzahl der verordneten Packungen</label> <!-- Anzahl der verordneten Packungen (ID 113) -->
                                            <div class="text-input">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dispenseRequest/fhir:quantity/fhir:value/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-8">
                                        <div class="input-container">
                                            <label>Kategorie</label> <!-- Kategorie (ID 81) -->
                                            <xsl:variable name="kategorie" select="fhir:entry/fhir:resource/fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Category']/fhir:valueCoding[fhir:system/@value='https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Medication_Category']/fhir:code/@value"/>

                                            <xsl:choose>
                                                <xsl:when test="$kategorie=00">
                                                    <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input&#34; readonly/&gt;</xsl:text>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input&#34; style=&#34;font-weight: bold&#34; readonly/&gt;</xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                            <xsl:choose>
                                                <xsl:when test="$kategorie=00">AM oder in die AM-Versorgung nach &#167; 31 SGB V einbezogenes Produkt (</xsl:when>
                                                <xsl:when test="$kategorie=01">BtM (</xsl:when>
                                                <xsl:when test="$kategorie=02">T-Rezept (AMVV &#167; 3a Abs. 1 (Thalidomid o. &#228;.)) (</xsl:when>
                                            </xsl:choose>
                                            <xsl:value-of select="($kategorie)" />
                                            <xsl:text disable-output-escaping='yes'>)&lt;/textarea&gt;</xsl:text>
                                        </div>
                                    </div>
                                </div>
                                <div class="row g-1">
                                    <xsl:if test="fhir:entry/fhir:resource/fhir:Medication/fhir:code/fhir:text">
                                        <div class="col-6">
                                            <div class="input-container">
                                                <label>Rezepturname</label> <!-- ID 123 -->
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:code/fhir:text/@value"/>
                                                </div>
                                            </div>
                                        </div>
                                    </xsl:if>
                                    <div class="col-3">
                                        <div class="input-container">
                                            <label>Gesamtmenge der Rezeptur</label> <!-- Gesamtmenge der Rezeptur (ID 124) + Einheit der Gesamtmenge (ID 125) -->
                                            <div class="text-input">
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:amount/fhir:numerator/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_PackagingSize']/fhir:valueString/@value"/>
                                                <xsl:text disable-output-escaping='yes'> </xsl:text>
                                                <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:amount/fhir:numerator/fhir:unit/@value"/>
                                            </div>
                                        </div>
                                    </div>
                                    <xsl:if test="fhir:entry/fhir:resource/fhir:Medication/fhir:form">
                                        <div class="col-3">
                                            <div class="input-container">
                                                <label>Darreichungsform</label> <!-- Darreichungsform Text (ID 104) => 30 Zeichen-->
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:Medication/fhir:form/fhir:text/@value"/>
                                                </div>
                                            </div>
                                        </div>
                                    </xsl:if>
                                </div>
                                <xsl:for-each select="fhir:entry/fhir:resource/fhir:Medication/fhir:ingredient">
                                    <div class="row g-1">
                                        <div class="col-1">
                                            <div class="input-container">
                                                <label>Position</label>
                                                <div class="text-input">
                                                    <xsl:number format="1 " /><xsl:value-of select="." />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="input-container">
                                                <label>Name</label> <!-- ID 130 -->
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:itemCodeableConcept/fhir:text/@value"/>
                                                </div>
                                            </div>
                                        </div>
                                        <xsl:if test="fhir:itemCodeableConcept/fhir:coding/fhir:code/@value">
                                            <div class="col-2">
                                                <div class="input-container">
                                                    <label>PZN</label> <!-- ID 131 -->
                                                    <div class="text-input">
                                                        <xsl:value-of select="fhir:itemCodeableConcept/fhir:coding/fhir:code/@value"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:if>
                                        <xsl:choose>
                                            <xsl:when test="//fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Packaging']/fhir:valueString/@value">
                                                <div class="col-3">
                                                    <div class="input-container">
                                                        <label>Darreichungsform</label> <!-- ID 132  => 30 Zeichen-->
                                                        <div class="text-input">
                                                            <xsl:value-of select="fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Ingredient_Form']/fhir:valueString/@value"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </xsl:when>
                                        </xsl:choose>
                                    </div>
                                    <div class="row g-1"> <!-- TODO activate function "justify-content-end" -->
                                        <div class="col-1">
                                            <div class="input-container">
                                                <label>.</label>
                                                <div class="text-input">
                                                    <xsl:text disable-output-escaping='yes'>.</xsl:text>
                                                </div>
                                            </div>
                                        </div>
                                        <xsl:choose>
                                            <xsl:when test="fhir:strength/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Ingredient_Amount']">
                                                <div class="col-10">
                                                    <div class="input-container">
                                                        <label>Menge und Einheit (Freitext)</label> <!-- ID 135 -->
                                                        <div class="text-input">
                                                            <xsl:value-of select="fhir:strength/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Ingredient_Amount']/fhir:valueString/@value"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <div class="col-10">
                                                    <div class="input-container">
                                                        <label>Menge und Einheit</label> <!-- ID 133 / 134 -->
                                                        <div class="text-input">
                                                            <xsl:value-of select="fhir:strength/fhir:numerator/fhir:value/@value"/>
                                                            <xsl:text disable-output-escaping='yes'> </xsl:text>
                                                            <xsl:value-of select="fhir:strength/fhir:numerator/fhir:unit/@value"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </div>
                                </xsl:for-each>
                                <xsl:choose>
                                    <xsl:when test="//fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_CompoundingInstruction']/fhir:valueString/@value">
                                        <div class="col-12">
                                            <div class="input-container">
                                                <label>Herstellungsanweisung</label> <!-- ID 126 -->
                                                <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input height-15mm&#34; readonly/&gt;</xsl:text>
                                                <xsl:value-of select="//fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_CompoundingInstruction']/fhir:valueString/@value"/>
                                                <xsl:text disable-output-escaping='yes'>&lt;/textarea&gt;</xsl:text>
                                            </div>
                                        </div>
                                    </xsl:when>
                                </xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="//fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Packaging']/fhir:valueString/@value">
                                        <div class="col-12">
                                            <div class="input-container">
                                                <label>Verpackung</label> <!-- ID 127 -->
                                                <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input height-15mm&#34; readonly/&gt;</xsl:text>
                                                <xsl:value-of select="//fhir:Medication/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_Medication_Packaging']/fhir:valueString/@value"/>
                                                <xsl:text disable-output-escaping='yes'>&lt;/textarea&gt;</xsl:text>
                                            </div>
                                        </div>
                                    </xsl:when>
                                </xsl:choose>
                            </xsl:when>
                        </xsl:choose>
                        <!-- Ende Medications -->
                        <div class="row g-1">
                            <div class="col">
                                <div class="input-container">
                                    <xsl:choose>
                                        <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dosageInstruction">
                                            <xsl:if test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dosageInstruction/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_DosageFlag']/fhir:valueBoolean/@value">
                                                <xsl:choose>
                                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dosageInstruction/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_DosageFlag']/fhir:valueBoolean[@value='true']">
                                                        <xsl:if test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dosageInstruction/fhir:text/@value">
                                                            <label>Dosierung</label>
                                                            <!-- TODO: dynamische JS Feldgrößenanpassung -->
                                                            <xsl:text disable-output-escaping='yes'>&lt;textarea id=&#34;txt-area&#34; type=&#34;text&#34; class=&#34;text-input&#34; style=&#34;height:20mm&#34; readonly/&gt;</xsl:text>
                                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dosageInstruction/fhir:text/@value"/>
                                                            <xsl:text disable-output-escaping='yes'>&lt;/textarea&gt;</xsl:text>
                                                        </xsl:if>
                                                    </xsl:when>
                                                    <xsl:when test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dosageInstruction/fhir:extension[@url='https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_DosageFlag']/fhir:valueBoolean[@value='false']">
                                                        <label>Dosierung</label>
                                                        <div class="text-input">
                                                            <xsl:text disable-output-escaping='yes'>Dosierung laut schriftlicher Dosierungsanweisung oder laut Medikationsplan</xsl:text>
                                                        </div>
                                                    </xsl:when>
                                                </xsl:choose>
                                            </xsl:if>
                                            <xsl:if test="//fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dosageInstruction/fhir:patientInstruction/@value">
                                                <label>Dosierung (Anwendungshinweise)</label> <!-- TODO  Textausgabe?-->
                                                <div class="text-input">
                                                    <xsl:value-of select="fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:dosageInstruction/fhir:patientInstruction/@value"/>
                                                </div>
                                            </xsl:if>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <label>Dosierung</label>
                                            <div class="text-input">
                                                <xsl:text disable-output-escaping='yes'>keine Dosierung angegeben</xsl:text>
                                            </div>
                                            <br/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </div>
                            </div>
                        </div>
                        <xsl:if test="//fhir:MedicationRequest/fhir:note/fhir:text/@value">
                            <div class="row g-1">
                                <div class="col">
                                    <div class="input-container">
                                        <label>Abgabehinweise</label> <!-- (ID 105) -->
                                        <div class="text-input">
                                            <xsl:value-of select="fhir:entry/fhir:resource/fhir:MedicationRequest/fhir:note/fhir:text/@value"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </xsl:if>
                    </div>
                </div>
            </div>
            <p align="right">Instanzversion:
                <b> <xsl:call-template name="getVersion">
                    <xsl:with-param name="url" select="//fhir:meta/fhir:profile/@value"/>
                </xsl:call-template></b> PRF.NR.:<b> <xsl:value-of select="//fhir:Composition/fhir:author[fhir:type/@value='Device']/fhir:identifier/fhir:value/@value"/></b>
                Stylesheet: <b>v1.0</b>
            </p>
        </div>
        <!-- Bootstrap JS und jQuery -->
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/jquery-3.5.1.slim.min.js"></script>
    </xsl:template>

    <!-- weitere Hilfs-Templates -->
    <xsl:template name="getVersion">
        <xsl:param name="url"/>
        <xsl:variable name="version" select="substring-after($url,'|')"/>
        <xsl:value-of select="$version"/>
    </xsl:template>

    <xsl:template name="formatDate">
        <xsl:param name="date"/>
        <xsl:variable name="yearNum" select="substring ($date, 1, 4)"/>
        <xsl:variable name="monthNum" select="substring ($date, 6, 2)"/>
        <xsl:variable name="dayNum" select="substring ($date, 9, 2)"/>
        <xsl:choose>
            <xsl:when test="$dayNum">
                <xsl:value-of select="$dayNum"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="'00'"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>.</xsl:text>
        <xsl:choose>
            <xsl:when test="$monthNum">
                <xsl:value-of select="$monthNum"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="'00'"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>.</xsl:text>
        <xsl:choose>
            <xsl:when test="$yearNum">
                <xsl:value-of select="$yearNum"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="'0000'"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="substring-after-last">
        <xsl:param name="input"/>
        <xsl:param name="substr"/>
        <xsl:variable name="lastChar" select="substring($input, string-length($input) - string-length($substr) +1)"/>
        <xsl:choose>
            <xsl:when test="$lastChar=$substr">
                <xsl:call-template name="substring-after-last">
                    <xsl:with-param name="input" select="substring($input,1, string-length($input)-1)"/>
                    <xsl:with-param name="substr" select="$substr"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <!-- Extract the string which comes after the first occurence -->
                <xsl:variable name="temp" select="substring-after($input,$substr)"/>
                <xsl:choose>
                    <!-- If it still contains the search string the recursively process -->
                    <xsl:when test="$substr and  contains($temp,$substr)">
                        <xsl:call-template name="substring-after-last">
                            <xsl:with-param name="input" select="$temp"/>
                            <xsl:with-param name="substr" select="$substr"/>
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:if test="contains($temp,'/')">
                            <xsl:call-template name="substring-after-last">
                                <xsl:with-param name="input" select="$temp"/>
                                <xsl:with-param name="substr" select="$substr"/>
                            </xsl:call-template>
                        </xsl:if>
                        <xsl:value-of select="$temp"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="getIdFromReference">
        <xsl:param name="ref"/>
        <xsl:choose>
            <xsl:when test="contains($ref,'/')">
                <xsl:call-template name="substring-after-last">
                    <xsl:with-param name="input" select="$ref"/>
                    <xsl:with-param name="substr" select="'/'"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="contains($ref,':')">
                <xsl:call-template name="substring-after-last">
                    <xsl:with-param name="input" select="$ref"/>
                    <xsl:with-param name="substr" select="':'"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$ref"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
