import InitE.FrontendStages.Globals.Output29
import InitE.FrontendStages.Declarations.Data29
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate13
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate29_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified29) =
        some globalOutput29 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal29 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified29) := by trivial
theorem globalException29_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified29) = none := by rfl
#print axioms globalTranslate29_eq
end InitE.FrontendStages.Declarations
