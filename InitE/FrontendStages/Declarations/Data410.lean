import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify394
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData410 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_key_buf" (Flapjack.Exp.const 0#64)
def simplifiedData410 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "bal_key_buf" (Flapjack.Exp.const 0#64)
def original410 := Pancake.PanLang.declToHOL originalData410
def simplified410 := Pancake.PanLang.declToHOL simplifiedData410
end InitE.FrontendStages.Declarations
