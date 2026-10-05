import InitE.FrontendStages.Globals.Output851
import InitE.FrontendStages.Declarations.Data851
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate834
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate851_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified851) =
        some globalOutput851 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal851 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified851) := by trivial
theorem globalException851_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified851) = none := by rfl
#print axioms globalTranslate851_eq
end InitE.FrontendStages.Declarations
