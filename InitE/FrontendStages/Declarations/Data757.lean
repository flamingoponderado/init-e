import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify741
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData757 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "fp2_accel_f1" (Flapjack.Exp.const 0#64)
def simplifiedData757 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "fp2_accel_f1" (Flapjack.Exp.const 0#64)
def original757 := Pancake.PanLang.declToHOL originalData757
def simplified757 := Pancake.PanLang.declToHOL simplifiedData757
end InitE.FrontendStages.Declarations
