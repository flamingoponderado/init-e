import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify609
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData625 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "b2_round" (Flapjack.Exp.const 0#64)
def simplifiedData625 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "b2_round" (Flapjack.Exp.const 0#64)
def original625 := Pancake.PanLang.declToHOL originalData625
def simplified625 := Pancake.PanLang.declToHOL simplifiedData625
end InitE.FrontendStages.Declarations
