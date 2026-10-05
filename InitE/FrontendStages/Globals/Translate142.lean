import InitE.FrontendStages.Globals.Output142
import InitE.FrontendStages.Declarations.Data142
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate126
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate142_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified142) =
        some globalOutput142 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal142 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified142) := by trivial
theorem globalException142_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified142) = none := by rfl
#print axioms globalTranslate142_eq
end InitE.FrontendStages.Declarations
