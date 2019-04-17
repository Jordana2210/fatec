window.onload = initPage;

function initPage(){
// localize as miniaturas da página    

    var thumbs = document.querySelectorAll("#thumbnail_pane");
    
    //subrotina para cada imagem
    
    for(var i=0; i<thumbs.length; i++){
       var image = thumbs[i]
    }
    
    //crie uma função on-click
    image.onclick = function(){
    //localize o nome da img em tam real  
    var detailUrl = 'imgs/' + this.title + '-detail.png'
    document.querySelector("itemDetail").src = detailUrl;
    var getDetails = this.title;
    }
    
}
