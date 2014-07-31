(function() {
  var bodyElem       = document.querySelector("body");
  var centerBallElem = document.querySelector(".center-ball");
  var controlsArr    = [].slice.call(
    document.querySelectorAll(".controller-module .handle-bg div")
  );
  var isMouseDown = false;

  centerBallElem.addEventListener("mousedown", function(e) {
    isMouseDown = true;
    e.target.setAttribute("pressed", "");
  });

  bodyElem.addEventListener("mouseup", function(e) {
    isMouseDown = false;
    centerBallElem.removeAttribute("pressed");
    document.querySelector("div[pressed]").removeAttribute("pressed");
  });

  var elementCb = function(e, i, arr) {
    e.addEventListener("mouseenter", function(e) {
      if (isMouseDown) {
        e.target.setAttribute("pressed", "");
      }
    });

    e.addEventListener("mouseleave", function(e) {
      if (e.target.className !== "center-ball"){
        e.target.removeAttribute("pressed");
      }
    });
  }

  controlsArr.forEach(elementCb);
})();
