var mergeTwoLists = function (list1, list2) {
  let newArr = [];
  let pushList1 = true;
  const listCombinedLength = list1.length + list2.length;

  for (let i = 0; i < listCombinedLength; i++) {
    if (list1.length === 0) {
      pushList1 = false;
    }

    if (list2.length === 0) {
      pushList1 = true;
    }

    if (pushList1) {
      newArr.push(list1.shift());
      pushList1 = false;
    } else {
      newArr.push(list2.shift());
      pushList1 = true;
    }
  }

  return newArr;
};
