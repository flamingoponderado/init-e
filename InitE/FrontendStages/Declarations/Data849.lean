import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify833
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData849 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bls_discount" (Flapjack.Exp.const 0#64)
def simplifiedData849 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bls_discount" (Flapjack.Exp.const 0#64)
def original849 := Pancake.PanLang.declToHOL originalData849
def simplified849 := Pancake.PanLang.declToHOL simplifiedData849
end InitE.FrontendStages.Declarations
