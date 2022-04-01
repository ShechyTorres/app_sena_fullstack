/* function _class(name) {
  return document.getElementsByClassName(name);
}

let tabpanes = _class("tab-header")[0].getElementsByTagName("div");

for (let i = 0; i < tabpanes.length; i++) {
  tabpanes[i].addEventListener("click", function() {
    _class("tab-header")[0].getElementsByClassName("active")[0].classList.remove("active");
    tabpanes[i].classList.add("active");

    _class("tab-content")[0].getElementsByClassName("active")[0].classList.remove("active");
    _class("tab-content")[0].getElementsByTagName("div")[i].classList.add("active");
  });
} */