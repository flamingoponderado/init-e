import InitE.FrontendStages.Globals.Output425
import InitE.FrontendStages.Declarations.Data425
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate404
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate425_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified425) =
        some globalOutput425 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal425 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified425) := by trivial
theorem globalException425_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified425) = none := by rfl
#print axioms globalTranslate425_eq
end InitE.FrontendStages.Declarations
