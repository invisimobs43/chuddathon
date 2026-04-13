<!DOCTYPE html>
<html>
<style>
#center {
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
border-width: 3px;
}
#buttons {
display: flex;
justify-content: center;
align-items: center;
}

#Text {
width: 400px;
height: 150px;
position: absolute;
background-color: pink; color: white;
font-size: 14px;
top: 390px;
z-index: 2;
}

#Sprite {
position: absolute;
z-index: 1;
}

#backgroundImage {
    z-index: 0;
}

h1, h2, p {
    color: white;
}

</style>

<body>
<div id="center">
<h1>pseudo vn dialog test</h1>
<p>euretros sprite + dia text LOL the buttons are a little broken</p>

<div id="Text">
<p id="Dialogue">placeholder 0</p>
</div>
<img id="backgroundImage" src="https://cdn.discordapp.com/attachments/1280141401941872763/1483177910197289130/20260316_114241.jpg?ex=69d74e51&is=69d5fcd1&hm=96618754e506d71a6101910ab2441ddf895a6c03dd4e09dfd4855e08510797e5&" alt="kitty!" width="564" height="564">
<img id="Sprite" src="https://media.discordapp.net/attachments/922091169729634315/1491493692551332011/nBHaemMAAAAASUVORK5CYII.png?ex=69d7e53e&is=69d693be&hm=e4677a6b3f081f04fdcaeaf6d3d0901e0f2d95ba81ff7bb13817d04684421097&=&format=webp&quality=lossless&width=621&height=1104" alt="the talker." width="180" height="300">

<div id="buttons">
<button id="leftButton" onclick="lastMessage();">Last Message</button>
<button id="middleButton">See Log</button>
<button id="rightButton" onclick="nextMessage();">Next Message</button>

</div>

<h2>if you press F12 and open the console, you can see the number go between -1 and 7.</h2>
<p>the REAL capped values are supposed to be 0 through 6. but for some reason only the min cap works? it's whatever LOL</p>

</div>
</body>
<script>

const max = 6
const min = 0
// dialogue fill-ins

let paraId = 0;
const dia1 = "Oh.";
const dia2 = "It's you.";
const dia3 = "Whoever.. you, are.";
const dia4 = "It's hard to make out. I can't really see anything, you know.";
const dia5 = "But- I appreciate you coming to visit.";
const dia6 = `Don't let me find you here again, runt. It's not like he'll- It's not like I'll let you stay out there for very long. Or.. whatever version of me you happen to run into.`;

// character sprites and stuff

let charSprite = 0;
const sprite1 = "https://i.pinimg.com/736x/27/2d/77/272d7705c22f388a2212cb194e5f0fea.jpg";
const sprite2 = "https://i.pinimg.com/736x/08/44/46/08444624ae14ba642b472e02a3ffb043.jpg";
const sprite3 = "https://media.discordapp.net/attachments/922091169729634315/1491493694975770834/6335611144738cc49c693af796bab72c.png?ex=69d7e53f&is=69d693bf&hm=1faa02cb79dab4f4dca682e5cc979987099f84220541deb1e30622a112c4fede&=&format=webp&quality=lossless&width=828&height=1104";
const sprite4 = "https://media.discordapp.net/attachments/922091169729634315/1491494457046990979/cc120c9b4fd0cdaaf5f51d48e8038b49.png?ex=69d7e5f5&is=69d69475&hm=5db6c4fdc516c01dd14394376464cb3a92b5c484cc9f36409f3f08662cd9e0d5&=&format=webp&quality=lossless&width=708&height=1260";
const sprite5 = "https://media.discordapp.net/attachments/922091169729634315/1491494561435091096/809e9390ec1182a80f1172027448c59d.png?ex=69d7e60e&is=69d6948e&hm=866fce31fd713ecefe6714cde41209595351c4a1c6bcfc917c5ff500ce99e8db&=&format=webp&quality=lossless&width=296&height=525";
const sprite6 = "https://media.discordapp.net/attachments/922091169729634315/1491494696340684830/1cdbd9304a92d3b507fe3d23d6d5a780.png?ex=69d7e62e&is=69d694ae&hm=5a73b880ac17a07c8633e15e85b2dc11fa05b57a7b325d0318af66aed977674a&=&format=webp&quality=lossless&width=296&height=525";

// functions

function nextMessage() {
    ++paraId;
    ++charSprite;
    console.log(paraId, charSprite);
    clamp();
    updatePara();
    updateSprite();
};

function lastMessage() { 
    --paraId;
    --charSprite;
    console.log(paraId, charSprite);
    clamp();
    updatePara();
    updateSprite();
};

function updatePara() {

    if (paraId == 1){
        document.getElementById("Dialogue").innerHTML = dia1;
    } else if (paraId == 2){
        document.getElementById("Dialogue").innerHTML = dia2;
    } else if (paraId == 3){
        document.getElementById("Dialogue").innerHTML = dia3;
    } else if (paraId == 4){
        document.getElementById("Dialogue").innerHTML = dia4;
    } else if (paraId == 5){
        document.getElementById("Dialogue").innerHTML = dia5;
    } else if (paraId == 6){
        document.getElementById("Dialogue").innerHTML = dia6;
    }  else {
        document.getElementById("Dialogue").innerHTML = "placeholder 0";
    };

};

function updateSprite() {

if (charSprite == 1){
    document.getElementById("Sprite").src = sprite1;
} else if (charSprite == 2){
    document.getElementById("Sprite").src = sprite2;
} else if (charSprite == 3){
    document.getElementById("Sprite").src = sprite3;
} else if (charSprite == 4){
    document.getElementById("Sprite").src = sprite4;
} else if (charSprite == 5){
    document.getElementById("Sprite").src = sprite5;
} else if (charSprite == 6){
    document.getElementById("Sprite").src = sprite6;
} else {
    document.getElementById("Sprite").src = "https://media.discordapp.net/attachments/922091169729634315/1491493692551332011/nBHaemMAAAAASUVORK5CYII.png?ex=69d7e53e&is=69d693be&hm=e4677a6b3f081f04fdcaeaf6d3d0901e0f2d95ba81ff7bb13817d04684421097&=&format=webp&quality=lossless&width=621&height=1104";
};


};

function clamp(){
if (paraId <= min){
    paraId = min;
} else if (paraId >= max){
    paraId = max
}

if (charSprite <= min){
    charSprite = min;
} else if (charSprite >= max){
    charSprite = max
}
}
</script>
</html>
