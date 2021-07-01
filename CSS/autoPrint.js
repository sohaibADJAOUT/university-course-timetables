(function () {
    function printWhenReady() {
        if (PDFViewerApplication.initialized) {
            window.print();
        }
        else {
            window.setTimeout(printWhenReady, 3000);
        }
    };

    printWhenReady();
})();