import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify886
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData902 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "wd_rlp_slices" (Flapjack.Exp.const 0#64)
def simplifiedData902 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "wd_rlp_slices" (Flapjack.Exp.const 0#64)
def original902 := Pancake.PanLang.declToHOL originalData902
def simplified902 := Pancake.PanLang.declToHOL simplifiedData902
end InitE.FrontendStages.Declarations
