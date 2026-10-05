import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify22
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData38 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "u256_ws" (Flapjack.Exp.const 0#64)
def simplifiedData38 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "u256_ws" (Flapjack.Exp.const 0#64)
def original38 := Pancake.PanLang.declToHOL originalData38
def simplified38 := Pancake.PanLang.declToHOL simplifiedData38
end InitE.FrontendStages.Declarations
