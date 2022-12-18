/**
 * PRE-ORDER TREE TRAVERSAL
 * WILL GO NODE-LEFT-RIGHT
 */
function preorderTraverse(tree) {
    if (isEmpty(tree)) return

    console.log(tree.val)
    
    preorderTraverse(tree.left)
    preorderTraverse(tree.right)
}

function isEmpty(obj) {
    if (! obj) return true;
    return Object.keys(obj).length === 0;
}

const TREE = {
    root: {
        val: 10,
        left: {
            val: 7,
            left: {
                val: 6,
                left: {
                    val: 1,
                    right: {},
                    left: {}
                },
                right: {}
            },
            right: {
                val: 8,
                right: {
                    val: 9
                },
                left: {}
            },
        },
        right: {
            val: 11,
            left: {},
            right: {
                val: 20,
                right: {
                    val: 22,
                    right: {},
                    left: {}
                },
                left: { 
                    val: 14 ,
                    right: {},
                    left: {}
                }
            },
        }
    }
}

preorderTraverse(
    TREE.root
)
