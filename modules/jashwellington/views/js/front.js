let chosenWellington = 0;
let chosenWarmer = 0;
let chosenIdpaWellington = 0;
let chosenIdpaWarmer = 0;


let scItems = {
    "wellington" : { "name" : '', "price":'',"priceText":''},
    "warmer" : { "name" : '', "price":'',"priceText":''}
};

function addInitialItems(){
    const firstWellington = document.querySelector('.configurator-slider--first .select-wellington');
    scItems.wellington.name =  firstWellington.dataset.name;
    scItems.wellington.price = firstWellington.dataset.price;
    scItems.wellington.priceText = document.querySelector('.selected-wellington__price').innerText  = firstWellington.dataset.priceText;

    const firstWarmer = document.querySelector('.configurator-slider--second .select-warmer');
    scItems.warmer.name =  firstWarmer.dataset.name;
    scItems.warmer.price  = firstWarmer.dataset.price;
    scItems.warmer.priceText =  firstWarmer.dataset.priceText;
    updateChosenItems(scItems);
}
addInitialItems();

function updateChosenItems(scItems){
    document.querySelector('.selected-wellington__name').innerText  = scItems.wellington.name ;
    document.querySelector('.selected-wellington__price').innerText  = scItems.wellington.priceText;
    document.querySelector('.selected-warmer__name').innerText = scItems.warmer.name;
    document.querySelector('.selected-warmer__price').innerText = scItems.warmer.priceText;

    let wholeprice = parseFloat(scItems.warmer.price) + parseFloat(scItems.wellington.price);
    document.querySelector('.combined-price__value').innerText = wholeprice.toFixed(2).replace('.',',');

    document.querySelector('.sizes-wrapper').classList.remove('visible');
    document.querySelector('.combined-price').classList.remove('visible');
    if(document.querySelector('.select-size-button--active') != null){
        document.querySelector('.select-size-button--active').classList.remove('.select-size-button--active');
    }
    $(".add-to-cart-section").hide();

}

let sliders = [];
document.querySelectorAll('.configurator-slider').forEach((slider, ind) => {

    sliders[ind] = tns({
        container: slider,
        items: 5,
        controlsText: ['<svg width="16" height="30"><use xlink:href="#svg-icon-left-arrow"></use></svg>', '<svg width="16" height="30"><use xlink:href="#svg-icon-right-arrow"></use></svg>'],
        center: true,
        start: 0,
        mouseDrag: true,
        nav: false,
        loop: true,
        speed: 600,
        gutter: 0,
        responsive: {
            320: {
                items: 1
            },
            500: {
                items: 2
            },
            767: {
                items: 3
            },
            992: {
                items: 4
            }
        }
    });
});

document.querySelectorAll('.configurator-slider').forEach((slider, ind) => {
    sliders[ind]
        .getInfo()
        .slideItems[sliders[ind].getInfo().index].classList.add(
        "vl-slide-center"
    );


    //
    // let below = sliders[ind].getInfo().container.parentElement.parentElement.parentElement.parentElement.nextElementSibling
    //
    // below.innerHTML = sliders[ind].getInfo().slideItems[sliders[ind].getInfo().index].querySelector('.offer-slider__hidden').innerHTML;


    sliders[ind].events.on("indexChanged", () => {
        let info = sliders[ind].getInfo();
        console.log(info)
        let indexCurr = info.index;
        let elements = document.getElementById(info.container.id).getElementsByClassName("vl-slide-center");
        while (elements.length > 0) {
            elements[0].classList.remove("vl-slide-center");
        }
        info.slideItems[indexCurr].classList.add("vl-slide-center");

        if(info.slideItems[indexCurr].querySelector('.select-warmer') != null){
            let chosenWarmer = info.slideItems[indexCurr].querySelector('.select-warmer');
            scItems.warmer.name =  chosenWarmer.dataset.name;
            scItems.warmer.price  = chosenWarmer.dataset.price;
            scItems.warmer.priceText =  chosenWarmer.dataset.priceText;
            updateChosenItems(scItems);
        }
        // below.innerHTML = info.slideItems[indexCurr].querySelector('.offer-slider__hidden').innerHTML;
    });
});



const WellingtonsSelector = '.my-slider__wrapper';
const WellingtonsElement = document.querySelector(WellingtonsSelector);

// var slider = tns({
//     container: WellingtonsSelector,
//     items: 3,
//     loop: true,
//     center: true,
//     startIndex: 0,
//     edgePadding: 200,
//     speed: 600,
//     onInit: (el) => {
//         // get slider info
//         console.log(el);
//         el.slideItems[el.index].classList.add('thisSparta');
//     }
// });

const WarmersSelector = '.my-slider-top__wrapper';
const WarmersElement = document.querySelector(WarmersSelector);
//
// var sliderTop = tns({
//     container: WarmersSelector,
//     items: 3,
//     loop: true,
//     center: true,
//     startIndex: 0,
//     edgePadding: 200,
//     speed: 600,
//     onInit: (el) => {
//         // get slider info
//         console.log(el);
//         el.slideItems[el.index].classList.add('thisSparta2');
//     }
// });


$(document).on('click', '.select-wellington', function () {
    scItems.wellington.name = $(this).attr("data-name");
    scItems.wellington.price = $(this).attr("data-price");
    scItems.wellington.priceText = $(this).attr("data-price-text");
    updateChosenItems(scItems);
    chosenWellington = parseInt($(this).attr("data-idp"));
    $(this).closest(".products").find(".product-miniature").removeClass("item-active");
    $(this).closest(".product-miniature").addClass('item-active');
    loadSizes();
    document.querySelector('.my-slider-top__wrapper').classList.add('showMe');
    WellingtonsElement.classList.add('hideMe')
});

$(document).on('click', '.select-warmer', function () {
    chosenWarmer = parseInt($(this).attr("data-idp"));
    loadSizes();
});

function loadSizes()
{
    if (typeof wellingtons !== 'undefined' &&
        typeof warmers !== 'undefined' &&
        typeof attributeMap !== 'undefined') {
        $(".add-to-cart-section").hide();
        chosenIdpaWellington = 0;
        chosenIdpaWellington = 0;

        if (chosenWellington > 0 && chosenWarmer > 0) {
            let wellingtonIda = 0;
            let wellington = wellingtons[chosenWellington]['attributes'];

            let html = '';

            for (let i = 0; i < wellington.length; i++) {
                wellingtonIda = parseInt(wellington[i]['id_attribute']);
                html += '<a class="select-size-button" ' +
                    'data-ida="'+ wellington[i]['id_attribute'] +'" ' +
                    'data-idpa="'+ wellington[i]['id_product_attribute'] +'"><svg><use xlink:href="#svg-icon-cloud"></use></svg><span>' + wellington[i]['name'] + '</span></a>';
            }

            $(".sizes").html(html);
            $(".sizes-wrapper, .combined-price").addClass('visible');
        }
    }
}

$(document).on('click', '.select-size-button', function () {
    let wellingtonIda = parseInt($(this).attr("data-ida"));
    let wellingtonIdpa = parseInt($(this).attr("data-idpa"));
    let warmerIda = parseInt(attributeMap[wellingtonIda]);
    let warmerIdpa = parseInt(warmers[chosenWarmer]['ida_to_idpa'][warmerIda]);
    document.querySelectorAll('.select-size-button').forEach(function removeClass(el){
        if(el != this){
            el.classList.remove('select-size-button--active');
        }
    })
    this.classList.add('select-size-button--active');
    chosenIdpaWellington = wellingtonIdpa;
    chosenIdpaWarmer = warmerIdpa;

    if (chosenWellington > 0 && chosenIdpaWellington > 0 && chosenWarmer > 0 && chosenIdpaWarmer > 0) {
        $(".add-to-cart-section").fadeIn();
    } else {
        console.log("Error has occured while trying to init add to cart action!");
    }
});

$(document).on('click', '.configurator-add-to-cart', function () {
    if (chosenWellington > 0 && chosenIdpaWellington > 0 && chosenWarmer > 0 && chosenIdpaWarmer > 0) {
        performAjaxWellington();
    }
});

function performAjaxWellington()
{
    if (chosenWellington > 0 && chosenIdpaWellington > 0 && chosenWarmer > 0 && chosenIdpaWarmer > 0) {
        $.ajax({
            url: jashwellington_addtocart,
            type: 'post',
            data: {
                ajax: true,
                module: 'jashwellington',
                fc: 'module',
                controller: 'addtocart',
                token: prestashop.static_token,
                idp1: chosenWellington,
                idp2: chosenWarmer,
                idpa1: chosenIdpaWellington,
                idpa2: chosenIdpaWarmer
            },
            success: function (response) {
                document.querySelector('.select-size-button--active').classList.remove('.select-size-button--active');
                setTimeout(function(){
                    $('#configurator-cart-confirmation').modal('show');
                }, 500);
                prestashop.emit('updateCart', {
                    reason: 'addTocart',
                    resp: {}
                });

            },
            error: function (xhr, ajaxOptions, thrownError) {
                console.log(xhr.status);
                console.log(xhr.responseText);
                console.log(thrownError);
            }
        });
    } else {
        console.log("Error has occured while trying to perform AJAX call!");
    }
}

//
// document.querySelector('.my-slider__wrapper [data-controls="next"]').onclick = function () {
//     console.log('click');
//     // get slider info
//     var info = slider.getInfo(),
//         indexPrev = info.indexCached,
//         indexCurrent = info.index;
//
//     console.log(indexPrev, indexCurrent);
//     // update style based on index
//     info.slideItems[indexCurrent].classList.remove('thisSparta');
//     info.slideItems[indexCurrent + 1].classList.add('thisSparta');
// };
// document.querySelector('.my-slider__wrapper [data-controls="prev"]').onclick = function () {
//     console.log('click');
//     // get slider info
//     var info = slider.getInfo(),
//         indexPrev = info.indexCached,
//         indexCurrent = info.index;
//
//     console.log(indexPrev, indexCurrent);
//     // update style based on index
//     info.slideItems[indexCurrent].classList.remove('thisSparta');
//     info.slideItems[indexCurrent - 1].classList.add('thisSparta');
// };
//
// document.querySelector('.my-slider-top__wrapper [data-controls="next"]').onclick = function () {
//     console.log('click');
//     // get slider info
//     var info = sliderTop.getInfo(),
//         indexPrev = info.indexCached,
//         indexCurrent = info.index;
//
//     console.log(indexPrev, indexCurrent);
//     // update style based on index
//     info.slideItems[indexCurrent].classList.remove('thisSparta2');
//     info.slideItems[indexCurrent + 1].classList.add('thisSparta2');
// };
// document.querySelector('.my-slider-top__wrapper [data-controls="prev"]').onclick = function () {
//     console.log('click');
//     // get slider info
//     var info = sliderTop.getInfo(),
//         indexPrev = info.indexCached,
//         indexCurrent = info.index;
//
//     console.log(indexPrev, indexCurrent);
//     // update style based on index
//     info.slideItems[indexCurrent].classList.remove('thisSparta2');
//     info.slideItems[indexCurrent - 1].classList.add('thisSparta2');
// };