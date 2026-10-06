import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify336
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData352 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bs" (Flapjack.Exp.const 0#64)
def simplifiedData352 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bs" (Flapjack.Exp.const 0#64)
def original352 := Pancake.PanLang.declToHOL originalData352
def simplified352 := Pancake.PanLang.declToHOL simplifiedData352
end InitE.FrontendStages.Declarations
