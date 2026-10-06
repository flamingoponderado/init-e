import InitE.FrontendStages.Globals.Output816
import InitE.FrontendStages.Declarations.Data816
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate800
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate816_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified816) =
        some globalOutput816 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal816 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified816) := by trivial
theorem globalException816_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified816) = none := by rfl
#print axioms globalTranslate816_eq
end InitE.FrontendStages.Declarations
