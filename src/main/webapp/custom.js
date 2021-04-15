
window.addEventListener("scroll", (event) => {
let scroll = this.scrollY;
var elem = document.getElementById('navbar')


if (scroll > 300)
{
elem.classList.add('bg-dark')
}
else{
elem.classList.remove('bg-dark')
}
});
