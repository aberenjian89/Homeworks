document.addEventListener("DOMContentLoaded", function(){
    const canvasel= document.getElementById('mycanvas');
    canvasel.width = 500;
    canvasel.height = 500;

    const ctx = canvasel.getContext("2d");
    ctx.fillStyle="red";
    ctx.fillRect(0, 0, 500, 500);

    ctx.beginPath();
    ctx.arc(250, 250, 200, 0, 2 * Math.PI, false);
    ctx.strokeStyle='purple';
    ctx.lineWidth = 2;
    ctx.stroke();
    ctx.fillStyle ="green";
    ctx.fill();

    const canvas = document.getElementById('canvas2');
    canvas.width = 600;
    canvas.height = 400;

    const ctx2=canvas.getContext("2d");
    ctx2.fillStyle="yellow";
    ctx2.fillRect(0,0,500,500);

    ctx2.beginPath();
    ctx2.arc(170, 170, 100, 0, 2 * Math.PI, false);
    ctx2.width = 200;
    ctx2.height = 200;
    ctx2.strokeStyle ='red';
    ctx2.lineWidth = 2;
    ctx2.stroke();
    ctx2.fillStyle = "brown";
    ctx2.fill();


});


