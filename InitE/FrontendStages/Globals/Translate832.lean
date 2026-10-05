import InitE.FrontendStages.Globals.Output832
import InitE.FrontendStages.Declarations.Data832
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate816
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate832_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified832) =
        some globalOutput832 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal832 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified832) := by trivial
theorem globalException832_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified832) = none := by rfl
#print axioms globalTranslate832_eq
end InitE.FrontendStages.Declarations
