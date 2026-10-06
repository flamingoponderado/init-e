import InitE.FrontendStages.Globals.Output132
import InitE.FrontendStages.Declarations.Data132
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate116
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate132_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified132) =
        some globalOutput132 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal132 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified132) := by trivial
theorem globalException132_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified132) = none := by rfl
#print axioms globalTranslate132_eq
end InitE.FrontendStages.Declarations
