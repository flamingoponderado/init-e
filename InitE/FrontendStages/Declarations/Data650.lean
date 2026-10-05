import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify634
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData650 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_gamma" (Flapjack.Exp.const 0#64)
def simplifiedData650 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_gamma" (Flapjack.Exp.const 0#64)
def original650 := Pancake.PanLang.declToHOL originalData650
def simplified650 := Pancake.PanLang.declToHOL simplifiedData650
end InitE.FrontendStages.Declarations
