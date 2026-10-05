import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify231
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData247 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "mpt_hash_scratch" (Flapjack.Exp.const 0#64)
def simplifiedData247 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "mpt_hash_scratch" (Flapjack.Exp.const 0#64)
def original247 := Pancake.PanLang.declToHOL originalData247
def simplified247 := Pancake.PanLang.declToHOL simplifiedData247
end InitE.FrontendStages.Declarations
