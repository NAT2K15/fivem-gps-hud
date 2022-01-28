$(function() {
    window.addEventListener('message', (event) => {
        $("#container").hide();
        if (event.data.type === "ui") {
            if (event.data.display === true) {
                $("#container").show();
            } else {
                $("#container").hide();
            }
        }
    });
});