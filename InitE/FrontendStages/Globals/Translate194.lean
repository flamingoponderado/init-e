import InitE.FrontendStages.Globals.Output194
import InitE.FrontendStages.Declarations.Data194
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate174
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate194_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified194) =
        some globalOutput194 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal194 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified194) := by trivial
theorem globalException194_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified194) = none := by rfl
#print axioms globalTranslate194_eq
end InitE.FrontendStages.Declarations
