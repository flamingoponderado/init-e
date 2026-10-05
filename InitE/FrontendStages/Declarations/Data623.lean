import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify607
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData623 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "b2_v" (Flapjack.Exp.const 0#64)
def simplifiedData623 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "b2_v" (Flapjack.Exp.const 0#64)
def original623 := Pancake.PanLang.declToHOL originalData623
def simplified623 := Pancake.PanLang.declToHOL simplifiedData623
end InitE.FrontendStages.Declarations
