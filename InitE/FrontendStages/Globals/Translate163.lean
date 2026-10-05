import InitE.FrontendStages.Globals.Output163
import InitE.FrontendStages.Declarations.Data163
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate146
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate163_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified163) =
        some globalOutput163 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal163 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified163) := by trivial
theorem globalException163_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified163) = none := by rfl
#print axioms globalTranslate163_eq
end InitE.FrontendStages.Declarations
