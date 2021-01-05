function user() {
  const logOut = document.getElementsById("logOut")

  logOut.addEventListener("mouseover", () => {
    console.log(logOut)
  })
  logOut.addEventListener("mouseout", () => {
  })
}
window.addEventListener("load", user);