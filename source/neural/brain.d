module neural.brain;

import  std.stdio;

/// sei divulgar
bool divulgar() {
    writeln("divulgando ...");
    return true;
}
/// sei vender algo
bool vender() {
    writeln("vendendo ...");
    return true;
}

/// sei cobrar algo
bool cobrar() {
    writeln("cobrando ...");
    return true;
}

auto know_list() {
    auto _know = [
        "divulgar": &divulgar,
        "vender": &vender,
        "cobrar": &cobrar
    ];
    return _know;
}

unittest {
    auto knowledgeList = know_list();
    auto know = knowledgeList["divulgar"];
    bool knowRunned = know();
    assert(knowRunned == true);
};
