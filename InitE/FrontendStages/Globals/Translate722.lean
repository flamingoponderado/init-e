import InitE.FrontendStages.Globals.Output722
import InitE.FrontendStages.Declarations.Data722
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate705
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate722_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified722) =
        some globalOutput722 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal722 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified722) := by trivial
theorem globalException722_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified722) = none := by rfl
#print axioms globalTranslate722_eq
end InitE.FrontendStages.Declarations
