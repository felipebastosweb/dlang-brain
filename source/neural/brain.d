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

auto know(string key) {
    auto _know = [
        "divulgar": &divulgar,
        "vender": &vender,
        "cobrar": &cobrar
    ];
    auto action = _know[key];
    return action();
}

unittest {
    auto knowledge = know("divulgar");
    assert(knowledge == true);
};