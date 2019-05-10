window.onload = function() {
    let printbtn = document.getElementById("print");

    printbtn.addEventListener('click', () => {
        let details = document.querySelectorAll("details");
        details.forEach((each) => {
            each.setAttribute("open", "open");
        });
        window.print();
    });

    let btn = document.getElementById("toggle");

    btn.addEventListener('click', () => {
        let details = document.querySelectorAll("details");
        let opened = false;
        details.forEach((each) => {
            if (!opened)
                opened = each.hasAttribute("open");
        });
        details.forEach((each) => {
            if (opened) {
                each.removeAttribute("open");
            } else {
                each.setAttribute("open", "open");
            }
        });
    });
}