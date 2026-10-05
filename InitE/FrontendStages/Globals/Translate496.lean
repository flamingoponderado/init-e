import InitE.FrontendStages.Globals.Output496
import InitE.FrontendStages.Declarations.Data496
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate480
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate496_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified496) =
        some globalOutput496 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal496 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified496) := by trivial
theorem globalException496_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified496) = none := by rfl
#print axioms globalTranslate496_eq
end InitE.FrontendStages.Declarations
