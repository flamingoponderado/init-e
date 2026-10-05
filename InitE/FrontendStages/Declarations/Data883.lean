import InitE.FrontendComputation
import InitE.FrontendStages.Declarations.Simplify867
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations

def originalData883 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "Fail" Flapjack.Shape.one
def simplifiedData883 : Decl (BitVec 64) :=
Flapjack.Decl.exnDecl "Fail" Flapjack.Shape.one
def original883 := Pancake.PanLang.declToHOL originalData883
def simplified883 := Pancake.PanLang.declToHOL simplifiedData883
end InitE.FrontendStages.Declarations
