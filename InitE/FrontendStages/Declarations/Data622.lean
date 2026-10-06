import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify606
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData622 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "b2_iv" (Flapjack.Exp.const 0#64)
def simplifiedData622 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "b2_iv" (Flapjack.Exp.const 0#64)
def original622 := Pancake.PanLang.declToHOL originalData622
def simplified622 := Pancake.PanLang.declToHOL simplifiedData622
end InitE.FrontendStages.Declarations
