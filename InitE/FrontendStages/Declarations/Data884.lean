import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify868
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData884 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "be" (Flapjack.Exp.const 0#64)
def simplifiedData884 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "be" (Flapjack.Exp.const 0#64)
def original884 := Pancake.PanLang.declToHOL originalData884
def simplified884 := Pancake.PanLang.declToHOL simplifiedData884
end InitE.FrontendStages.Declarations
