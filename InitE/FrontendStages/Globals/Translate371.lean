import InitE.FrontendStages.Globals.Output371
import InitE.FrontendStages.Declarations.Data371
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate348
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate371_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified371) =
        some globalOutput371 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal371 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified371) := by trivial
theorem globalException371_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified371) = none := by rfl
#print axioms globalTranslate371_eq
end InitE.FrontendStages.Declarations
