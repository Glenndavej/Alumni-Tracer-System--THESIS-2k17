<script type="text/javascript" src="admin/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
    window.onload = function(){   
    //Check File API support
    if(window.File && window.FileList && window.FileReader)
    {
        $('#files').live("change", function(event) {
            var files = event.target.files; //FileList object
            var output = document.getElementById("result");
            for(var i = 0; i< files.length; i++)
            {
                var file = files[i];
                //Only pics
                // if(!file.type.match('image'))
                if(file.type.match('image.*')){
                    if(this.files[0].size < 10097152){    
                  // continue;
                    var picReader = new FileReader();
                    picReader.addEventListener("load",function(event){
                        var picFile = event.target;
                        var div = document.createElement("div");
                        div.innerHTML = "<img class='thumbnail' src='" + picFile.result + "'" +
                                "title='preview image'/>";
                        output.insertBefore(div,null);            
                    });
                    //Read the image
                    $('#clear, #upload, #result').show();

                    picReader.readAsDataURL(file);
                    }else{
                        alert("Image Size is too big. Minimum size is 2MB.");
                        $(this).val("");
                    }
                }else{
                alert("You can only upload image file.");
                $(this).val("");
            }
            }                               
           
        });
    }
    else
    {
        console.log("Your browser does not support File API");
    }
}

   $('#files').live("click", function() {
        $('.thumbnail').parent().remove();
        $('result').hide();
        $(this).val("");
    });

    $('#clear').live("click", function() {
        $('.thumbnail').parent().remove();
        $('#result').hide();
        $('#upload').hide();
        $('#files').val("");
        $(this).hide();
    });



</script>
<style type="text/css">
 
.thumbnail{
    height: 180px;
    width: 180px;
    margin: 5px; 
    float: left;
}
#clear{
   display:none;
}
#upload{
    display:none;
}
#result {
    background-color: #E1E1E1;
    border: 2px dotted #cccccc;
    display: none;
    margin:0 auto;
}


</style>