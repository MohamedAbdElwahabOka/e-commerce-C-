$("#logo").click(() => {
    console.log("dddd");
});

document.getElementById('prev').onclick = () => {
    const widthItem = document.querySelector('.item').offsetWidth;
    document.getElementById('formList').scrollLeft -= widthItem;
    event.preventDefault();
}

document.getElementById('next').onclick = () => {
    const widthItem = document.querySelector('.item').offsetWidth;
    document.getElementById('formList').scrollLeft += widthItem;
    event.preventDefault();
}


