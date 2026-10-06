import InitE.FrontendStages.Globals.Output269
import InitE.FrontendStages.Declarations.Data269
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate253
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate269_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified269) =
        some globalOutput269 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal269 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified269) := by trivial
theorem globalException269_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified269) = none := by rfl
#print axioms globalTranslate269_eq
end InitE.FrontendStages.Declarations
