import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify642
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData658 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_accel_fp2_f1" (Flapjack.Exp.const 0#64)
def simplifiedData658 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_accel_fp2_f1" (Flapjack.Exp.const 0#64)
def original658 := Pancake.PanLang.declToHOL originalData658
def simplified658 := Pancake.PanLang.declToHOL simplifiedData658
end InitE.FrontendStages.Declarations
