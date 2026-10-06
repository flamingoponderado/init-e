import InitE.FrontendStages.Globals.Output543
import InitE.FrontendStages.Declarations.Data543
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate527
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate543_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified543) =
        some globalOutput543 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal543 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified543) := by trivial
theorem globalException543_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified543) = none := by rfl
#print axioms globalTranslate543_eq
end InitE.FrontendStages.Declarations
