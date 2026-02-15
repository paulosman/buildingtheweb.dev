// Mobile nav toggle
(function () {
  const toggle = document.querySelector('.nav-toggle');
  const nav = document.querySelector('.nav-links');
  if (toggle && nav) {
    toggle.addEventListener('click', function () {
      const expanded = this.getAttribute('aria-expanded') === 'true';
      this.setAttribute('aria-expanded', !expanded);
      nav.classList.toggle('nav-open');
    });
  }
})();
