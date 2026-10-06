import InitE.FrontendStages.Globals.Output60
import InitE.FrontendStages.Declarations.Data60
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate44
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate60_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified60) =
        some globalOutput60 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal60 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified60) := by trivial
theorem globalException60_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified60) = none := by rfl
#print axioms globalTranslate60_eq
end InitE.FrontendStages.Declarations
