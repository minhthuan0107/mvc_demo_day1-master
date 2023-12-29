document.addEventListener("DOMContentLoaded", function() {
    var myButton = document.getElementById("myButton");
    myButton.addEventListener("click", function() {
        //alert("Successfully!");
        Swal.fire({
            icon: 'success',
            title: 'Successfully!',
            text: 'Ok.',
            timer: 1500,
            showConfirmButton: false
        });
    });
});