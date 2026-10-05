import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify391
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData407 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_index" (Flapjack.Exp.const 0#64)
def simplifiedData407 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_index" (Flapjack.Exp.const 0#64)
def original407 := Pancake.PanLang.declToHOL originalData407
def simplified407 := Pancake.PanLang.declToHOL simplifiedData407
end InitE.FrontendStages.Declarations
