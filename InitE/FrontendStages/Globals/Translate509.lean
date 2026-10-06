import InitE.FrontendStages.Globals.Output509
import InitE.FrontendStages.Declarations.Data509
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate493
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate509_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified509) =
        some globalOutput509 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal509 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified509) := by trivial
theorem globalException509_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified509) = none := by rfl
#print axioms globalTranslate509_eq
end InitE.FrontendStages.Declarations
