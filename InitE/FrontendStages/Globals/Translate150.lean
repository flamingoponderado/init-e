import InitE.FrontendStages.Globals.Output150
import InitE.FrontendStages.Declarations.Data150
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate133
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate150_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified150) =
        some globalOutput150 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal150 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified150) := by trivial
theorem globalException150_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified150) = none := by rfl
#print axioms globalTranslate150_eq
end InitE.FrontendStages.Declarations
