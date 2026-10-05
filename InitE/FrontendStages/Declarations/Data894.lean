import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify878
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData894 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "consolidation_request_address" (Flapjack.Exp.const 0#64)
def simplifiedData894 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "consolidation_request_address" (Flapjack.Exp.const 0#64)
def original894 := Pancake.PanLang.declToHOL originalData894
def simplified894 := Pancake.PanLang.declToHOL simplifiedData894
end InitE.FrontendStages.Declarations
