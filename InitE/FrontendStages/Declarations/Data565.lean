import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify549
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData565 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "cur_cont" (Flapjack.Exp.const 0#64)
def simplifiedData565 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "cur_cont" (Flapjack.Exp.const 0#64)
def original565 := Pancake.PanLang.declToHOL originalData565
def simplified565 := Pancake.PanLang.declToHOL simplifiedData565
end InitE.FrontendStages.Declarations
