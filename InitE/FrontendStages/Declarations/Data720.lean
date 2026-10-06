import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify704
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData720 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bls_c" (Flapjack.Exp.const 0#64)
def simplifiedData720 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bls_c" (Flapjack.Exp.const 0#64)
def original720 := Pancake.PanLang.declToHOL originalData720
def simplified720 := Pancake.PanLang.declToHOL simplifiedData720
end InitE.FrontendStages.Declarations
