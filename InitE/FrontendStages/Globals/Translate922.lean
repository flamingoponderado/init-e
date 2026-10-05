import InitE.FrontendStages.Globals.Output922
import InitE.FrontendStages.Declarations.Data922
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate906
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate922_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified922) =
        some globalOutput922 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal922 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified922) := by trivial
theorem globalException922_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified922) = none := by rfl
#print axioms globalTranslate922_eq
end InitE.FrontendStages.Declarations
