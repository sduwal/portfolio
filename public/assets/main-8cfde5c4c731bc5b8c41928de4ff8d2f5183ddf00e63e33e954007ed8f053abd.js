window.onload=function(){document.getElementById("print").addEventListener("click",()=>{document.querySelectorAll("details").forEach(e=>{e.setAttribute("open","open")}),window.print()}),document.getElementById("toggle").addEventListener("click",()=>{let e=document.querySelectorAll("details"),t=!1;e.forEach(e=>{t||(t=e.hasAttribute("open"))}),e.forEach(e=>{t?e.removeAttribute("open"):e.setAttribute("open","open")})})};