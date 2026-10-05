import InitE.FrontendStages.Globals.Output377
import InitE.FrontendStages.Declarations.Data377
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate361
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate377_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified377) =
        some globalOutput377 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal377 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified377) := by trivial
theorem globalException377_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified377) = none := by rfl
#print axioms globalTranslate377_eq
end InitE.FrontendStages.Declarations
