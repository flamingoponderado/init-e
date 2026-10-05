import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify551
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData567 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "vm_system_address" (Flapjack.Exp.const 0#64)
def simplifiedData567 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "vm_system_address" (Flapjack.Exp.const 0#64)
def original567 := Pancake.PanLang.declToHOL originalData567
def simplified567 := Pancake.PanLang.declToHOL simplifiedData567
end InitE.FrontendStages.Declarations
