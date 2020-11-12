function memo() {
  const createFolder = document.getElementById("create-folder");
  const form = document.getElementById("form");

  createFolder.addEventListener("mouseover", () => {
    createFolder.setAttribute("style", "background-color:#37373d;")
  })
  createFolder.addEventListener("mouseout", () => {
    createFolder.removeAttribute("style", "background-color:#37373d")
  })
  createFolder.addEventListener("click", () => {
    if (form.getAttribute("style") == "display:block;") {
      form.removeAttribute("style", "display:block;")
    } else {
      form.setAttribute("style", "display:block;")
    }
  })
}
setInterval(memo, 1000);