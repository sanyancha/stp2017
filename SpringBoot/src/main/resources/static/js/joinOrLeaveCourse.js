
//функция меняет в строке запятую на . и делает представлениие типа float

function parseStringMy(string) {
    var R = new RegExp('(\\d+)([,.]?)(\\d*)', 'g');
    var str = string;
    var num = str.replace(R, function(str, p1, p2, p3, offset, s){
        if (p3=='') return p1;
        return p1+'.'+p3;
    });

    return num;

}

// Функция для checkbox работы, возвращает список активных check

function getValueActiveCheckBoxes(columnNo) {
    checkboxes = document.getElementsByTagName("input");
    var list = [];

    for (var i = 0; i < checkboxes.length; i++) {
        var checkbox = checkboxes[i];

        if (checkbox.checked) {
            var currentRow = checkbox.parentNode.parentNode;
            var secondColumn = currentRow.getElementsByTagName("td")[columnNo];
            list.push(secondColumn.innerHTML);
        }

    }

    return list;
}