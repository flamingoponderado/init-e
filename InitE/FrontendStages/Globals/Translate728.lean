import InitE.FrontendStages.Globals.Output728
import InitE.FrontendStages.Declarations.Data728
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate711
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate728_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified728) =
        some globalOutput728 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal728 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified728) := by trivial
theorem globalException728_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified728) = none := by rfl
#print axioms globalTranslate728_eq
end InitE.FrontendStages.Declarations
