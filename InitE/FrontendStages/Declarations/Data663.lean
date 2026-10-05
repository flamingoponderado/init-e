import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify647
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData663 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_accel_g1_params" (Flapjack.Exp.const 0#64)
def simplifiedData663 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bn_accel_g1_params" (Flapjack.Exp.const 0#64)
def original663 := Pancake.PanLang.declToHOL originalData663
def simplified663 := Pancake.PanLang.declToHOL simplifiedData663
end InitE.FrontendStages.Declarations
