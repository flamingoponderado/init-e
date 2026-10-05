import InitE.FrontendStages.Globals.Output47
import InitE.FrontendStages.Declarations.Data47
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate30
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate47_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified47) =
        some globalOutput47 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal47 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified47) := by trivial
theorem globalException47_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified47) = none := by rfl
#print axioms globalTranslate47_eq
end InitE.FrontendStages.Declarations
