function showMemo() {
  const folderBox = document.querySelectorAll(".room")

  folderBox.forEach(function(room) {
    room.addEventListener("mouseover", () => {
      room.setAttribute("style", "background-color:#6d6e6a;")
      console.log(room)
    })
    room.addEventListener("mouseout", () => {
      room.removeAttribute("style", "background-color:#6d6e6a")
    })
    
  })
}
setInterval(showMemo, 1000);