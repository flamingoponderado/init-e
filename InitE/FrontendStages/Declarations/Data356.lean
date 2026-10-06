import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify340
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData356 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "journal_cap" (Flapjack.Exp.const 0#64)
def simplifiedData356 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "journal_cap" (Flapjack.Exp.const 0#64)
def original356 := Pancake.PanLang.declToHOL originalData356
def simplified356 := Pancake.PanLang.declToHOL simplifiedData356
end InitE.FrontendStages.Declarations
