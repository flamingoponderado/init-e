import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify422
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData438 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "EvmErr" Flapjack.Shape.one
def simplifiedData438 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "EvmErr" Flapjack.Shape.one
def original438 := Pancake.PanLang.declToHOL originalData438
def simplified438 := Pancake.PanLang.declToHOL simplifiedData438
end InitE.FrontendStages.Declarations
