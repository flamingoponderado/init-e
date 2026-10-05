import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify390
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData406 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_accounts" (Flapjack.Exp.const 0#64)
def simplifiedData406 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_accounts" (Flapjack.Exp.const 0#64)
def original406 := Pancake.PanLang.declToHOL originalData406
def simplified406 := Pancake.PanLang.declToHOL simplifiedData406
end InitE.FrontendStages.Declarations
