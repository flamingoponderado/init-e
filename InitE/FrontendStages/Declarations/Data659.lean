import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify643
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData659 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_accel_fp2_f2" (Flapjack.Exp.const 0#64)
def simplifiedData659 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_accel_fp2_f2" (Flapjack.Exp.const 0#64)
def original659 := Pancake.PanLang.declToHOL originalData659
def simplified659 := Pancake.PanLang.declToHOL simplifiedData659
end InitE.FrontendStages.Declarations
