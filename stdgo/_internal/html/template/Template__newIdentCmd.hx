package stdgo._internal.html.template;
function _newIdentCmd(_identifier:stdgo.GoString, _pos:stdgo._internal.text.template.parse.Parse_Pos.Pos):stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode> {
        return (stdgo.Go.setRef(({ nodeType : (4 : stdgo._internal.text.template.parse.Parse_NodeType.NodeType), args : (new stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>(1, 1, ...[stdgo.Go.asInterface(stdgo._internal.text.template.parse.Parse_newIdentifier.newIdentifier(_identifier?.__copy__()).setTree(null).setPos(_pos))]) : stdgo.Slice<stdgo._internal.text.template.parse.Parse_Node.Node>) } : stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_CommandNode.CommandNode>);
    }
