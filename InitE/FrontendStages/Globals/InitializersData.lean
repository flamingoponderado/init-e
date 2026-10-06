import InitE.FrontendStages.Globals.Context
namespace InitE.FrontendStages.Declarations
open Flapjack Flapjack.Pancake.PanLang
def globalInitializers : List (ProgHOL 64) :=
  (compileDecsExactHOL globalInitial globalDeclarations).1

end InitE.FrontendStages.Declarations
