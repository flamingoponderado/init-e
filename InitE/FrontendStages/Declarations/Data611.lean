import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify595
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData611 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "rmd_tab" (Flapjack.Exp.const 0#64)
def simplifiedData611 : Decl (BitVec 64) :=
Flapjack.Decl.decl Flapjack.Shape.one "rmd_tab" (Flapjack.Exp.const 0#64)
def original611 := Pancake.PanLang.declToHOL originalData611
def simplified611 := Pancake.PanLang.declToHOL simplifiedData611
end InitE.FrontendStages.Declarations
