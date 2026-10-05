import InitE.FrontendStages.Globals.InitializersData
namespace InitE.FrontendStages
open Flapjack Flapjack.Pancake.PanLang
open Declarations
def generatedMain : DeclHOL 64 := .function
  { name := globalStart, inline := false, exported := false, params := [],
    body := .seq (nestedSeqHOL globalInitializers) (.call none globalNewStart []),
    returnShape := .one }

end InitE.FrontendStages
