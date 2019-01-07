document.addEventListener('DOMContentLoaded', function () {
    const container = document.querySelector('#explicit__container');

    if (!container) return;

    const form = container.querySelector('#explicit__form');
    const result = container.querySelector('#explicit__result');
    const kol_tr = container.querySelector('#kol');

    form.addEventListener('ajax:success', function(evt) {
        const response = evt.detail[0];
        result.innerHTML = response.result || 'Ответ не получен';
        kol_tr.innerText = "Количество найденных палиндромов = " + response.kol;

    });
});
